import { CommonModule } from '@angular/common';
import { Component, OnInit } from '@angular/core';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-ng-style',
  standalone: true,
  imports: [FormsModule, CommonModule],
  templateUrl: './ng-style.component.html',
  styleUrl: './ng-style.component.css'
})
export class NgStyleComponent implements OnInit {

  puntuacion: number | null = null;

  constructor() { }

  ngOnInit(): void {
  }

  getColorTexto(): string {
    if (this.puntuacion !==  null && this.puntuacion >= 7) {
      return 'green';
    } else if (this.puntuacion !==  null && this.puntuacion >= 5) {
      return 'orange';
    } else {
      return 'red';
    }
  }

}