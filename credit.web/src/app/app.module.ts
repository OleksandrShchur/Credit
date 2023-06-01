import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { MatToolbarModule } from '@angular/material/toolbar';
import { MatIconModule } from '@angular/material/icon';
import { MatInputModule } from '@angular/material/input';
import { MatButtonModule } from '@angular/material/button';
import { MatCardModule } from '@angular/material/card';
import { MatGridListModule } from '@angular/material/grid-list';
import { MatTableModule } from '@angular/material/table';
import { MatPaginatorModule } from '@angular/material/paginator';
import { MatDialogModule } from '@angular/material/dialog';
import { MatDatepickerModule } from '@angular/material/datepicker';
import { MatCheckboxModule } from '@angular/material/checkbox';
import { MatNativeDateModule } from '@angular/material/core';
import { HttpClient, HttpClientModule } from '@angular/common/http';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatTabsModule } from '@angular/material/tabs';
import { MatExpansionModule } from '@angular/material/expansion';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { NavBarComponent } from './nav-bar/nav-bar.component';
import { CreditInputsComponent } from './credit-inputs/credit-inputs.component';
import { CreditService } from 'src/services/credit.service';
import { BaseService } from 'src/services/base.service';
import { PopulateCreditDialogComponent } from './populate-credit-dialog/populate-credit-dialog.component';
import { HomeComponent } from './home/home.component';
import { LoginComponent } from './customer-account/login.component';
import { RegisterComponent } from './customer-account/register.component';
import { UserCabinetComponent } from './user-cabinet/user-cabinet.component';

@NgModule({
  declarations: [
    AppComponent,
    NavBarComponent,
    CreditInputsComponent,
    PopulateCreditDialogComponent,
    HomeComponent,
    LoginComponent,
    RegisterComponent,
    UserCabinetComponent,
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    MatToolbarModule,
    MatIconModule,
    MatInputModule,
    MatButtonModule,
    MatCardModule,
    MatGridListModule,
    MatTableModule,
    MatPaginatorModule,
    MatDialogModule,
    MatDatepickerModule,
    FormsModule,
    MatCheckboxModule,
    MatNativeDateModule,
    HttpClientModule,
    ReactiveFormsModule,
    MatFormFieldModule,
    MatTabsModule,
    MatExpansionModule,
  ],
  exports: [MatFormFieldModule, MatInputModule],
  providers: [HttpClient, BaseService, CreditService],
  bootstrap: [AppComponent],
})
export class AppModule {}
