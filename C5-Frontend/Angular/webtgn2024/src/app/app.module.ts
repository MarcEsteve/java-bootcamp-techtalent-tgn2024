import {CommonModule} from '@angular/common';
import { provideHttpClient } from '@angular/common/http';
import {NgModule} from '@angular/core';
import {FormsModule} from '@angular/forms';
import {BrowserModule} from '@angular/platform-browser';
import { EmployeeListComponent } from './pages/employee-list/employee-list.component';

@NgModule({
  imports: [BrowserModule, CommonModule, FormsModule],
  declarations: [EmployeeListComponent],
  providers: [provideHttpClient()],
  bootstrap: [],
})
export class AppModule {}