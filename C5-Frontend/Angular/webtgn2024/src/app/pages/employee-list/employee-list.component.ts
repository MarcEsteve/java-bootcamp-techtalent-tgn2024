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
  // Creo la variable que recibe un array lista de empleados defindo en la interfaz
  public employeesList: IEmployee[] = [];

  // Inyección de dependencias (DI) del servicio que obtienes la información de la base de datos
  constructor(private employeeService: EmployeeService) {}

  // La variable employeeService de la DI genera el método getEmployees() del service 
  // y el suscribe asigna la información a la variable local employeesList para utilizarla en nuestro DOM
  ngOnInit(): void {
    this.employeeService
      .getEmployees()
      .subscribe((data) => (this.employeesList = data));
  }
}
