import { CommonModule, TitleCasePipe } from '@angular/common';
import { Component } from '@angular/core';
import { AuthService } from '../../servicios/auth.service';
import { RouterLink } from '@angular/router';

@Component({
  selector: 'app-perfil',
  standalone: true,
  imports: [CommonModule, TitleCasePipe, RouterLink],
  templateUrl: './perfil.component.html',
  styleUrl: './perfil.component.css'
})
export class PerfilComponent {

  constructor(public authService: AuthService) {}

}
