import { Component, OnInit } from '@angular/core';
import { ClientesService } from '../../servicios/clientes.service';
import { CrearClienteComponent } from '../crear-cliente/crear-cliente.component';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-tabla-clientes',
  standalone: true,
  imports: [CrearClienteComponent, CommonModule],
  templateUrl: './tabla-clientes.component.html',
  styleUrl: './tabla-clientes.component.css'
})
export class TablaClientesComponent implements OnInit {

  clientes: Array<any> = []

  //Inyección de la dependencia (DI) del servicio con los datos de clientes 
  constructor(private clientesService: ClientesService) { }

  ngOnInit(): void {
    this.clientes = this.clientesService.getClientes();
  }

}