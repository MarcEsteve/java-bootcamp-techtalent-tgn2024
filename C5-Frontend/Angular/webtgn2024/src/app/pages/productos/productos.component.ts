import { Component } from '@angular/core';
import { ProductosService } from '../../servicios/productos.services';

@Component({
  selector: 'app-productos',
  standalone: true,
  imports: [],
  templateUrl: './productos.component.html',
  styleUrl: './productos.component.css'
})
export class ProductosComponent {
  constructor(private productosService: ProductosService) { }

  ngOnInit(): void {
  }

  addProducto(producto: any): void {
    this.productosService.addProducto(producto);
  }

}
