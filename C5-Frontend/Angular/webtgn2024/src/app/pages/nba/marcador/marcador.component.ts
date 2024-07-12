import { Component } from '@angular/core';
import { EquipoComponent } from '../equipo/equipo.component';
import { TopScoreComponent } from '../top-score/top-score.component';

@Component({
  selector: 'app-marcador',
  standalone: true,
  imports: [EquipoComponent, TopScoreComponent],
  templateUrl: './marcador.component.html',
  styleUrl: './marcador.component.css'
})
export class MarcadorComponent {
  equipoLocal: any = {
    nombre: 'lakers',
    logo: 'https://i.ibb.co/kScnyQC/lakers.png',
    jugadores: [
      {nombre: 'Isaiah Thomas', puntos: 0, imagen: 'https://i.ibb.co/j5LYsQN/thomas.png'},
      {nombre: 'Kyle Kuzma', puntos: 0, imagen: 'https://i.ibb.co/Fs16X5C/kuzma.png'},
      {nombre: 'Julius Randle', puntos: 0, imagen: 'https://i.ibb.co/bF3PLWX/randle.png'},
      {nombre: 'Brandom Ingram', puntos: 0, imagen: 'https://i.ibb.co/ZgVqCZF/ingram.png'},
      {nombre: 'Brook López', puntos: 0, imagen: 'https://i.ibb.co/nQ8nwNX/lopez.png'},
    ]
  }

  equipoVisitante: any = {
    nombre: 'celtics',
    logo: 'https://i.ibb.co/vk7Ks0R/celtics.png',
    jugadores: [
      {nombre: 'Kaadem Allen', puntos: 0, imagen: 'https://i.ibb.co/87m9wLB/allen.png'},
      {nombre: 'Aaron Bynes', puntos: 0, imagen: 'https://i.ibb.co/Jmf8bw1/bynes.png'},
      {nombre: 'Jabari Bird', puntos: 0, imagen: 'https://i.ibb.co/SKRQkmQ/bird.png'},
      {nombre: 'Jaylen Brown', puntos: 0, imagen: 'https://i.ibb.co/kyLWB2R/brown.png'},
      {nombre: 'Jonathan Gibson', puntos: 0, imagen: 'https://i.ibb.co/tc64z3t/gibson.png'},
    ]
  }

  puntosLocales: number = 0;
  puntosVisitantes: number = 0;
  logoNBA: string = 'https://i.ibb.co/k5yXNgy/nba.jpg';

  constructor() { }

  ngOnInit(): void {
  }

  getCanastaLocal(dataCanasta: any) {
    this.puntosLocales += dataCanasta.puntos;
    this.equipoLocal.jugadores.forEach((elem: any) => {
        if(elem.nombre === dataCanasta.nombreJugador) {
          elem.puntos += dataCanasta.puntos;
        }
    });
  }

  getCanastaVisitante(dataCanasta: any) {
    this.puntosVisitantes += dataCanasta.puntos;
    this.equipoVisitante.jugadores.forEach((elem: any) => {
        if(elem.nombre === dataCanasta.nombreJugador) {
          elem.puntos += dataCanasta.puntos;
        }
    });
  }
}
