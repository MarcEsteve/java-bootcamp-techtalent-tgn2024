import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';
import { CookieService } from 'ngx-cookie-service';

@Component({
  selector: 'app-cookies',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './cookies.component.html',
  styles: ``,
  providers: [],
})
export class CookiesComponent {
  titulo = 'Ejemplo de Cookies';
  cookieValue: string ='';

  constructor(private cookieService: CookieService) {}

  setCookie() {
    this.cookieService.set('Test', 'Hello World');
    this.cookieValue = this.cookieService.get('Test');
  }

  deleteCookie() {
    this.cookieService.delete('Test');
    this.cookieValue = this.cookieService.get('Test');
  }
}
