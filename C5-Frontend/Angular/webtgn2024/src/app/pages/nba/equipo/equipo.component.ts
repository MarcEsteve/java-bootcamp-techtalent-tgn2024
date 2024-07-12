import { CommonModule } from '@angular/common';
import { Component, EventEmitter, Input, Output } from '@angular/core';

@Component({
  selector: 'app-equipo',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './equipo.component.html',
  styleUrl: './equipo.component.css'
})
export class EquipoComponent {
  @Input() equipo: any;
  @Output() canasta: EventEmitter<any> = new EventEmitter;

  constructor() { }

  setCanasta(nombreJugador: string, puntos: number): void {
    this.canasta.emit({
      nombreJugador, // simplificado de nombreJugador: nombreJugador de acuerdo a ECMA6
      puntos
    })
  }
}
