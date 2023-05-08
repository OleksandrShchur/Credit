export interface User {
  isSelected: boolean;
  id: number;
  firstName: string;
  lastName: string;
  email: string;
  birthDate: string;
  sumOfCredit: number;
  isEdit: boolean;
  countOfPayments: number;
  risk: number;
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
    key: 'birthDate',
    type: 'date',
    label: 'Дата народження',
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
    key: 'isEdit',
    type: 'isEdit',
    label: '',
  },
];
