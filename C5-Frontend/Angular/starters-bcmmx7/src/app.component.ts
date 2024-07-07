import { Component } from '@angular/core';
import { EmployeeService } from './employee.service';
import { IEmployee } from './employeeInterface';

@Component({
  selector: 'app-root',
  //standalone: true,
  template: `
    <app-employee-list></app-employee-list>
  `,
  styleUrl: 'app.component.css'
})
export class AppComponent {}
