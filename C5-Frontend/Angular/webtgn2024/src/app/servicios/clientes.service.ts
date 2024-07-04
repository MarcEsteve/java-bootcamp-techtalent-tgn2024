import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})

export class ClientesService {

  private clientes: Array<any> = [
    {nombre: 'Iberdrola', cif: 'A12345678', localidad: 'Bilbao'},
    {nombre: 'Jazztel', cif: 'A87654321', localidad: 'Madrid'},
    {nombre: 'La Caixa', cif: 'A4444444', localidad: 'Barcelona'},
  ]

  constructor() { }

  getClientes(): Array<any> {
    return this.clientes;
  }

  setCliente(cliente: any): void {
    this.clientes.push(cliente);
  }

}