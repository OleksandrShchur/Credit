import { Component } from '@angular/core';
import { MatDialog } from '@angular/material/dialog';
import { MatTableDataSource } from '@angular/material/table';
import { User, UserColumns } from 'src/models/User';

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
  creditLimit: Number = 18500; //(Math.floor(Math.random() * 100) * 1000) % 100000;

  constructor(public dialog: MatDialog) {}

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
      risk: 0,
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

  prepareData() {}
}
