import { Injectable } from '@angular/core';
import { Observable, Subject } from 'rxjs';

@Injectable({
  providedIn: 'root',
})
export class ProductosService {
  private productosSeleccionados: Array<any> = [];
  private productosCounter: Subject<any> = new Subject<any>(); // Subject es uno de los tipos de Observables

  constructor() {}

  // getNumeroProductos(): number { // Sin RxJS
  //   return this.productosSeleccionados.length;
  // }

  getNumeroProductos(): Observable<any> {
    return this.productosCounter.asObservable();
  }

  addProducto(producto: any): void {
    this.productosSeleccionados.push(producto);
    this.productosCounter.next({ counter: this.productosSeleccionados.length });
  }
}
