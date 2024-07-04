import { Component, Inject } from '@angular/core';
import { InfoPaginaService } from '../../servicios/info-pagina.service';
import { DatosService } from '../../servicios/datos.service';


@Component({
  selector: 'app-about',
  standalone: true,
  imports: [],
  templateUrl: './about.component.html',
  styleUrl: './about.component.css',
})
export class AboutComponent {
  nombre = 'Angelina';

  constructor (@Inject(DatosService) public _datos:DatosService) {
  }
  
}
