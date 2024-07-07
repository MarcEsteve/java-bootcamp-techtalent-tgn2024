import { Component, OnInit } from '@angular/core';
import { IEmployee } from '../../interfaces/employeeInterface';
import { EmployeeService } from '../../servicios/employee.service';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-employee-list',
  standalone: true,
  imports: [CommonModule],
  templateUrl: 'employee-list.component.html',
  styles: ``
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
