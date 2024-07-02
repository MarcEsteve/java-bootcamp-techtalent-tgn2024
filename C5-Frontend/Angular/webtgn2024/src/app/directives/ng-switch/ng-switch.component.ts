import { CommonModule } from '@angular/common';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-ng-switch',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './ng-switch.component.html',
  styleUrl: './ng-switch.component.css',
})
export class NgSwitchComponent implements OnInit {
  mensaje: string = 'warning';

  constructor() {}

  ngOnInit(): void {}

  cambiarMensaje(nuevoMensaje: string) {
    this.mensaje = nuevoMensaje;
  }
}
