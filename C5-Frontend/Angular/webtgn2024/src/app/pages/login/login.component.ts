import { CommonModule, UpperCasePipe } from '@angular/common';
import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { AuthService } from '../../servicios/auth.service';
import { RouterLink } from '@angular/router';

@Component({
  selector: 'app-login',
  standalone: true,
  imports: [CommonModule, FormsModule, RouterLink, UpperCasePipe],
  templateUrl: './login.component.html',
  styleUrl: './login.component.css',
})
export class LoginComponent {
  username: string = '';
  password: string = '';
  errorMessage: string = '';

  constructor(public authService: AuthService) {}

  
  login(valoruserinput:string, valorpassinput:string) {
    this.username = valoruserinput;
    console.log(this.username);
    this.password = valorpassinput;
    console.log(this.password);
    setTimeout(() => {
      if (this.authService.login(this.username, this.password)) {
        this.errorMessage = "";
        alert('Inicio de sesión exitoso');
      } else {
        this.errorMessage = 'son incorrectos';
      }
    }, 1000);
  

  }

  logout() {
    this.authService.logout();
    alert('Sesión cerrada');
  }
}
