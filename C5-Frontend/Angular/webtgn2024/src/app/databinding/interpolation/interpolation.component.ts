import { Component } from '@angular/core';

@Component({
  selector: 'app-interpolation',
  standalone: true,
  imports: [],
  templateUrl: './interpolation.component.html',
  styleUrl: './interpolation.component.css'
})
export class InterpolationComponent {
  actor: any = {
    apellidos: 'De Niro',
    nombre: 'Robert',
    fechaNacimiento: new Date(1943, 7, 17),
  };

  constructor() {}

  ngOnInit(): void {}

  getEdad(): number {
    const edad: number =
      (new Date().getTime() - this.actor.fechaNacimiento.getTime()) /
      (365 * 24 * 60 * 60 * 1000);
    return Math.ceil(edad);
  }
}
