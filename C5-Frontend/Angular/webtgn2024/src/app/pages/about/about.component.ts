import { Component } from '@angular/core';
import { InfoPaginaService } from '../../servicios/info-pagina.service';

@Component({
  selector: 'app-about',
  standalone: true,
  imports: [],
  templateUrl: './about.component.html',
  styleUrl: './about.component.css',
})
export class AboutComponent {
  nombre = 'Angelina';

  constructor(public infoPaginaService: InfoPaginaService) {
    //Inyección de dependencia del servicio
  }
}
