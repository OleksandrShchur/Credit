import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

import { CreditInputsComponent } from './credit-inputs/credit-inputs.component';
import { HomeComponent } from './home/home.component';
import { LoginComponent } from './customer-account/login.component';
import { RegisterComponent } from './customer-account/register.component';
import { UserCabinetComponent } from './user-cabinet/user-cabinet.component';

const routes: Routes = [
  {
    path: '',
    component: HomeComponent,
  },
  {
    path: 'login',
    component: LoginComponent,
  },
  {
    path: 'register',
    component: RegisterComponent,
  },
  {
    path: 'table',
    component: CreditInputsComponent,
  },
  {
    path: 'cabinet',
    component: UserCabinetComponent,
  },
  {
    path: '**',
    redirectTo: '',
  },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule],
})
export class AppRoutingModule {}
