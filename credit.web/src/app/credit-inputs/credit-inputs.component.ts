import { Component } from '@angular/core';
import { MatDialog } from '@angular/material/dialog';
import { MatTableDataSource } from '@angular/material/table';
import { CreditData } from 'src/models/creditData';

import { PrepareModel } from 'src/models/prepareModel';
import { User, UserColumns } from 'src/models/user';
import { CreditService } from 'src/services/credit.service';
import { PopulateCreditDialogComponent } from '../populate-credit-dialog/populate-credit-dialog.component';
import { PaymentCreditData } from 'src/models/PaymentCreditData';

@Component({
  selector: 'app-credit-inputs',
  templateUrl: './credit-inputs.component.html',
  styleUrls: ['./credit-inputs.component.scss'],
})
export class CreditInputsComponent {
  displayedColumns: string[] = UserColumns.map((col) => col.key);
  columnsSchema: any = UserColumns;
  dataSource = new MatTableDataSource<User>();
  valid: any = {};
  lastId: number = 0;
  creditLimit: number = 18500; //(Math.floor(Math.random() * 100) * 1000) % 100000;
  interestRate: number = 36;

  constructor(public dialog: MatDialog, private creditService: CreditService) {}

  ngOnInit() {}

  updateRow(row: User) {
    const index = this.dataSource.data.findIndex((u) => u.id === row.id);

    this.dataSource.data[index].isEdit = false;
  }

  addRow() {
    const newRow: User = {
      id: this.lastId++,
      firstName: '',
      lastName: '',
      email: '',
      birthDate: '',
      isEdit: true,
      isSelected: false,
      sumOfCredit: 0,
      countOfPayments: 0,
      risk: 0,
      paymentsByMonths: [],
    };
    this.dataSource.data = [newRow, ...this.dataSource.data];
  }

  removeRow(id: number) {
    this.dataSource.data = this.dataSource.data.filter((u) => u.id !== id);
  }

  removeSelectedRows() {
    // const users = this.dataSource.data.filter((u: User) => u.isSelected);
    // this.dialog
    //   .open(ConfirmDialogComponent)
    //   .afterClosed()
    //   .subscribe((confirm) => {
    //     if (confirm) {
    //     }
    //   });
  }

  inputHandler(e: any, id: number, key: string) {
    if (!this.valid[id]) {
      this.valid[id] = {};
    }
    this.valid[id][key] = e.target.validity.valid;
  }

  disableSubmit(id: number) {
    if (this.valid[id]) {
      return Object.values(this.valid[id]).some((item) => item === false);
    }
    return false;
  }

  isAllSelected() {
    return this.dataSource.data.every((item) => item.isSelected);
  }

  isAnySelected() {
    return this.dataSource.data.some((item) => item.isSelected);
  }

  selectAll(event: any) {
    this.dataSource.data = this.dataSource.data.map((item) => ({
      ...item,
      isSelected: event.checked,
    }));
  }

  openDialog(selectedRow: User): void {
    const dialogRef = this.dialog.open(PopulateCreditDialogComponent, {
      data: {
        sumOfCredit: selectedRow.sumOfCredit,
        countOfPayments: selectedRow.countOfPayments,
        id: selectedRow.id,
        payments: selectedRow.paymentsByMonths,
      },
    });

    dialogRef.afterClosed().subscribe((result) => {
      console.log('The dialog was closed');
      console.log(result);
      this.dataSource.data.find((x) => x.id === result.id)!.paymentsByMonths =
        result.payments;

      console.log(this.dataSource);
    });
  }

  prepareData() {
    let creditData: CreditData[] = [];

    this.dataSource.data.forEach((el) => {
      creditData.push({
        sumOfCredit: el.sumOfCredit,
        countOfPayments: el.countOfPayments,
        risk: el.risk,
        mounthlyPayment: 0,
        income: 0,
      });
    });

    const percentRate: number = 1 / this.interestRate;

    creditData.forEach((el) => {
      el.mounthlyPayment =
        (el.sumOfCredit *
          (percentRate * Math.pow(1 + percentRate, el.countOfPayments))) /
        (Math.pow(1 + percentRate, el.countOfPayments) - 1);

      let pureIncome = el.countOfPayments * el.mounthlyPayment - el.sumOfCredit;

      const riskPercentage = el.risk / 100;
      el.income =
        pureIncome * (1 - riskPercentage) - 2 * el.sumOfCredit * riskPercentage;
    });

    console.log(creditData);

    const prepareData: PrepareModel = {
      expectedPayment: creditData.map((x) => Number(x.sumOfCredit)),
      income: creditData.map((x) => -x.income),
      budget: this.creditLimit,
    };

    this.creditService.calculateModel(prepareData).subscribe(
      (response) => {
        console.log(response);
        alert('Processing model successful.');
      },
      (error) => {
        alert('Processing model finished with error.');
        console.log(error);
      }
    );
  }
}
