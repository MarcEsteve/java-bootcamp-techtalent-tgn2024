import { CommonModule, TitleCasePipe, UpperCasePipe } from '@angular/common';
import { Component, OnInit } from '@angular/core';
import { AuthService } from '../../servicios/auth.service';
import { RouterLink } from '@angular/router';
import { User } from '../../interfaces/user.interface';
import { PasswordPipe } from '../../pipes/password.pipe';
import { CookieService } from 'ngx-cookie-service';

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

  constructor(public authService: AuthService, private cookieAdmin: CookieService) {}

  ngOnInit(): void {
    if (this.authService.isLoggedIn()) {
      this.usuario = this.authService.getUsuarioDB();
      this.psw = this.usuario?.pass;
    }
  }

  isAdmin(): boolean {
    if ( this.usuario?.rol === 'admin') {
      console.log("verdad que es admin");
      this.cookieAdmin.set('rol', 'admin', { expires: 2, sameSite: 'Lax' })
      return true;
    } else {
      return false
    }
  }

  isAdminCookie(): boolean {
    if ( this.cookieAdmin.get('rol') === 'admin') {
      console.log("verdad que es admin en cookie");
      return true;
    } else {
      return false
    }
  }


}
