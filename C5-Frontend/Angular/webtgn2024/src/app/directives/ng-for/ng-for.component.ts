import { CommonModule } from '@angular/common';
import { Component, OnInit } from '@angular/core';
import { Cliente } from '../../models/cliente.module';
import { Proveedor } from '../../models/proveedor.module';

@Component({
  selector: 'app-ng-for',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './ng-for.component.html',
  styles: ``
})
export class NgForComponent implements OnInit {

  // Hardcoeando los valores (normalmente vendrán de un servicio)
  proveedores: Array<Proveedor> = [ // Tipado con Clase TypeScript
    new Proveedor('Gas Natural', 'A12344342'),
    new Proveedor('Iberdrola', 'A768276387'),
    new Proveedor('Jazztl', 'A63873688')
  ]

  clientes: Array<Cliente> = [ // Tipado con Interfaz TypeScript
    {nombre: 'Telefónica', cif: 'A1234567'},
    {nombre: 'Orange', cif: 'A63876438'},
  ]

  constructor() { }

  ngOnInit(): void {
  }

}