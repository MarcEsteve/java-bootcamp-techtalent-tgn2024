import { Component, importProvidersFrom } from '@angular/core';
import {
  bootstrapApplication,
  platformBrowser,
} from '@angular/platform-browser';
import 'zone.js';
import { IEmployee } from './employeeInterface';
import { EmployeeService } from './employee.service';
import { HttpClientModule } from '@angular/common/http';
import { AppModule } from './app.module';



// bootstrapApplication(App, {
//   providers: [importProvidersFrom([HttpClientModule])],
// });

platformBrowser()
  .bootstrapModule(AppModule)
  .catch((e) => console.error(e));
