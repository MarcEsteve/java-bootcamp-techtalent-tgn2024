import { Component, Inject, OnInit } from '@angular/core';
import { IEmployee } from './employeeInterface';
import { EmployeeService } from './employee.service';

@Component({
  selector: 'app-about',
  templateUrl: './about.component.html',
  styleUrl: './about.component.css',
})
export class AboutComponent implements OnInit {
  nombre = 'Angelina';
  public aboutList: IEmployee[] = [];

  // Inyección de dependencias DI
  constructor(private employeeService: EmployeeService) {}

  ngOnInit(): void {
    this.employeeService
      .getEmployees()
      .subscribe((data) => (this.aboutList = data));
  }
}
