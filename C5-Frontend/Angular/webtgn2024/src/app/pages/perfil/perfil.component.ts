import { CommonModule, TitleCasePipe, UpperCasePipe } from '@angular/common';
import { Component, OnInit } from '@angular/core';
import { AuthService } from '../../servicios/auth.service';
import { RouterLink } from '@angular/router';
import { User } from '../../interfaces/user.interface';
import { PasswordPipe } from '../../pipes/password.pipe';

@Component({
  selector: 'app-perfil',
  standalone: true,
  imports: [CommonModule, TitleCasePipe, RouterLink, PasswordPipe, UpperCasePipe],
  templateUrl: './perfil.component.html',
  styleUrl: './perfil.component.css'
})
export class PerfilComponent implements OnInit {

  usuario: User | undefined;
  psw: string | any = '';

  constructor(public authService: AuthService) {}

  ngOnInit(): void {
    if (this.authService.isLoggedIn()) {
      this.usuario = this.authService.getUsuarioDB();
      this.psw = this.usuario?.pass;
    }
  }

}
