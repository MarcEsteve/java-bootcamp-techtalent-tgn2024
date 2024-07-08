import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { CookieService } from 'ngx-cookie-service';

@Component({
  selector: 'app-cookie-test',
  standalone: true,
  imports: [FormsModule, CommonModule],
  templateUrl: './cookie-test.component.html',
  styles: ``,
})
export class CookieTestComponent {
  titulo = 'Ejemplo de Cookies';
  cookieValue: string = '';
  username: string = '';
  password: string = '';

  constructor(private cookieService: CookieService) {}

  ngOnInit() {
    this.applyColor();
    this.checkLogin();
  }

  setCookie() {
    this.cookieService.set('Test', 'Hello World');
    this.cookieValue = this.cookieService.get('Test');
  }
  setColorVerde() {
    this.cookieService.set('color', 'green', { expires: 2, sameSite: 'Lax' });
  }

  deleteCookie() {
    this.cookieService.delete('Test');
    this.cookieValue = this.cookieService.get('Test');
  }
  applyColor() {
    const color = this.cookieService.get('color');
    const element = document.getElementById('cookiecolor');
    if (element && color) {
      element.style.color = color;
    }
  }

  login(usernameInput: HTMLInputElement, passwordInput: HTMLInputElement) {
    this.username = usernameInput.value;
    this.password = passwordInput.value;

    this.cookieService.set('username', this.username, { expires: 2, sameSite: 'Lax' });
    // Hash the password before setting it in the cookie
    const hashedPassword = btoa(this.password);
    this.cookieService.set('password', hashedPassword, { expires: 2, sameSite: 'Lax' });

    this.checkLogin();
  }

  logout() {
    this.cookieService.delete('username');
    this.cookieService.delete('password');
    this.checkLogin();
  }

  checkLogin() {
    const username = this.cookieService.get('username');
    const password = this.cookieService.get('password');
    if (username && password) {
      this.username = username;
      this.password = atob(password); // Decode the base64 hashed password
      console.log('Logged in as:', username);
    } else {
      this.username = '';
      this.password = '';
      console.log('Not logged in');
    }
  }
}
