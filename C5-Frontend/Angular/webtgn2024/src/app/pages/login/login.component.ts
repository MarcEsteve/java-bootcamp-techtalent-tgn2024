import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { AuthService } from '../../servicios/auth.service';

@Component({
  selector: 'app-login',
  standalone: true,
  imports: [CommonModule, FormsModule],
  templateUrl: './login.component.html',
  styleUrl: './login.component.css',
})
export class LoginComponent {
  username: string = '';
  password: string = '';
  errorMessage: string = '';

  constructor(public authService: AuthService) {}

  onUsernameChange(value: string) {
    this.username = value;
  }

  onPasswordChange(value: string) {
    this.password = value;
  }

  login() {
    if (this.authService.login(this.username, this.password)) {
      this.errorMessage = '';
      alert('Inicio de sesión exitoso');
    } else {
      this.errorMessage = 'Usuario o contraseña incorrectos';
    }
  }

  logout() {
    this.authService.logout();
    alert('Sesión cerrada');
  }
}
