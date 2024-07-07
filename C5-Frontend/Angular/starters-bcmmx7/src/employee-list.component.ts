import { Component, OnInit } from '@angular/core';
import { IEmployee } from './employeeInterface';
import { EmployeeService } from './employee.service';

@Component({
  selector: 'app-employee-list',
  templateUrl: 'employee-list.component.html',
  styleUrl: 'employee-list.component.css'
})
export class EmployeeListComponent implements OnInit {
  public employeesList: IEmployee[] = [];

  // Inyección de dependencias DI
  constructor(private employeeService: EmployeeService) {}

  ngOnInit(): void {
    this.employeeService
      .getEmployees()
      .subscribe((data) => (this.employeesList = data));
  }
}
