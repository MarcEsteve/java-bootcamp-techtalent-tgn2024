import { Component } from '@angular/core';
import { RouterLink, RouterOutlet } from '@angular/router';

@Component({
  selector: 'app-pagina-404',
  standalone: true,
  imports: [RouterLink],
  templateUrl: './pagina-404.component.html',
  styles: `
    *{
      text-align:center;
    }
  `
})
export class Pagina404Component {

}
