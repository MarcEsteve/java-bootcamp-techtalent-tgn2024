import { Component, OnInit } from '@angular/core';
import { IEmployee } from '../../interfaces/employeeInterface';
import { EmployeeService } from '../../servicios/employee.service';
import { provideHttpClient } from '@angular/common/http';

@Component({
  selector: 'app-employee-list',
  template: `
    <h2>Lista empleados</h2>
    <ul *ngFor="let pepito of employeesList">
      <li>Nombre: {{ pepito.nom }} - Titulo: {{ pepito.titulo }}</li>
      <img [src]="pepito.img">
    </ul>
  `,
  styles: [],
  providers: [provideHttpClient(withFetch())]
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
