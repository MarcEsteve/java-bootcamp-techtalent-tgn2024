import { CommonModule, TitleCasePipe } from '@angular/common';
import { Component, OnInit } from '@angular/core';
import { RouterLink, RouterLinkActive } from '@angular/router';
import { AuthService } from '../../servicios/auth.service';
import { Subscription } from 'rxjs';
import { ProductosService } from '../../servicios/productos.services';

@Component({
  selector: 'app-header',
  standalone: true,
  imports: [RouterLink, CommonModule, TitleCasePipe, RouterLinkActive],
  templateUrl: './header.component.html',
  styleUrl: './header.component.css',
})
export class HeaderComponent implements OnInit {
  productsCounter: number = 0;
  suscripcionProductos: Subscription | any;

  constructor(
    public authService: AuthService,
    private productosService: ProductosService
  ) {}

  ngOnInit(): void {
    // this.productsCounter = this.productosService.getNumeroProductos(); Sin RxJS
    this.suscripcionProductos = this.productosService
      .getNumeroProductos()
      .subscribe((data: any) => {
        this.productsCounter = data.counter;
      });
  }

  ngOnDestroy(): void {
    this.suscripcionProductos.unsubscribe();
  }
}
