import { CommonModule } from '@angular/common';
import { Component, Input, OnInit } from '@angular/core';

@Component({
  selector: 'app-top-score',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './top-score.component.html',
  styleUrl: './top-score.component.css'
})
export class TopScoreComponent implements OnInit{
  @Input() equipoLocal: any;
  @Input() equipoVisitante: any;
  jugadores: any = [];

  constructor() { }

  ngOnInit(): void {
    this.jugadores = [...this.equipoLocal, ...this.equipoVisitante];
  }

  ngAfterContentChecked() {
    this.sortJugadores();
  }

  sortJugadores() {
    this.jugadores.sort((a: any, b: any) => {
      return (b.puntos - a.puntos);
    })
  }
}
