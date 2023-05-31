export interface User {
  isSelected: boolean;
  id: number;
  firstName: string;
  lastName: string;
  email: string;
  sumOfCredit: number;
  isEdit: boolean;
  countOfPayments: number;
  risk: number;
  paymentsByMonths: Array<number>;
  allowedPayment?: Number;
}

export const UserColumns = [
  {
    key: 'isSelected',
    type: 'isSelected',
    label: '',
  },
  {
    key: 'firstName',
    type: 'text',
    label: "Ім'я",
    required: true,
  },
  {
    key: 'lastName',
    type: 'text',
    label: 'Прізвище',
    required: true,
  },
  {
    key: 'email',
    type: 'email',
    label: 'Пошта',
    required: true,
    pattern: '.+@.+',
  },
  {
    key: 'sumOfCredit',
    type: 'currency',
    label: 'Сума кредиту',
  },
  {
    key: 'risk',
    type: 'number',
    label: 'Імовірність неповернення, %',
  },
  {
    key: 'countOfPayments',
    type: 'number',
    label: 'Кількість виплат',
  },
  {
    key: 'allowedPayment',
    type: 'allowedPayment',
    label: 'Можлива сума виплати',
  },
  {
    key: 'isEdit',
    type: 'isEdit',
    label: '',
  },
];
