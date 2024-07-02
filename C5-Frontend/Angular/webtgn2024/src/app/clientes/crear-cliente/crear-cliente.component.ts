import { Component, OnInit } from '@angular/core';
import { ClientesService } from '../../servicios/clientes.service';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-crear-cliente',
  standalone: true,
  imports: [FormsModule],
  templateUrl: './crear-cliente.component.html',
  styleUrl: './crear-cliente.component.css'
})
export class CrearClienteComponent implements OnInit {

  cliente: any = {
    nombre: '',
    cif: '',
    localidad: '',
  }

  // Inyección de dependencia (DI) del "Service" en clientes.service.ts
  constructor(private clientesService: ClientesService) { }

  ngOnInit(): void {
  }

  addCliente(): void {
    this.clientesService.setCliente(this.cliente);
    this.cliente = {
      nombre: '',
      cif: '',
      localidad: '',
    }
  }

}