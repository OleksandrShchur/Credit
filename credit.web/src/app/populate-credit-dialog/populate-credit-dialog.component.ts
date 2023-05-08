import { Component, Inject } from '@angular/core';
import { MatDialogRef, MAT_DIALOG_DATA } from '@angular/material/dialog';
import { PaymentCreditData } from 'src/models/PaymentCreditData';

@Component({
  selector: 'app-populate-credit-dialog',
  templateUrl: './populate-credit-dialog.component.html',
  styleUrls: ['./populate-credit-dialog.component.css'],
})
export class PopulateCreditDialogComponent {
  public paymentsData: Array<number> = [];
  inputsNumber: number[] = [];

  constructor(
    public dialogRef: MatDialogRef<PopulateCreditDialogComponent>,
    @Inject(MAT_DIALOG_DATA) public data: PaymentCreditData
  ) {
    for (let i = 0; i < this.data.countOfPayments - 1; i++) {
      this.inputsNumber.push(i + 1);
    }

    if (data.payments.length === 0) {
      data.payments = new Array<number>(Number(data.countOfPayments)).fill(0);
      this.paymentsData = new Array<number>(Number(data.countOfPayments)).fill(
        0
      );
    } else {
      this.paymentsData = data.payments;
    }
  }

  onSubmit(): void {
    console.log(this.data);
    this.dialogRef.close({ payments: this.paymentsData, id: this.data.id });
  }

  closeDialog() {
    console.log(this.data);
    this.dialogRef.close(this.data);
  }

  onCancel(): void {
    console.log(this.data);
    this.dialogRef.close();
  }
}
