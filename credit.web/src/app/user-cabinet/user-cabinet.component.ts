import { Component, OnInit, ViewChild } from '@angular/core';
import { MatAccordion } from '@angular/material/expansion';
import { Router } from '@angular/router';

interface Transaction {
  item: string;
  cost: number;
}

@Component({
  selector: 'app-user-cabinet',
  templateUrl: './user-cabinet.component.html',
  styleUrls: ['./user-cabinet.component.css'],
})
export class UserCabinetComponent implements OnInit {
  @ViewChild(MatAccordion) accordion!: MatAccordion;

  displayedColumns: string[] = ['item', 'cost'];
  transactions: Transaction[] = [
    { item: '20.10.2015', cost: 4000 },
    { item: '26.02.2018', cost: 50000 },
    { item: '06.08.2020', cost: 2000 },
    { item: '28.08.2022', cost: 44000 },
    { item: '02.06.2023', cost: 2500 },
  ];

  /** Gets the total cost of all transactions. */
  getTotalCost() {
    return this.transactions
      .map((t) => t.cost)
      .reduce((acc, value) => acc + value, 0);
  }

  constructor(private router: Router) {}

  ngOnInit(): void {}

  logout() {
    this.router.navigate(['/']);
  }
}
