import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-property-binding',
  standalone:true,
  templateUrl: './property-binding.component.html',
  styleUrl: './property-binding.component.css'
})
export class PropertyBindingComponent implements OnInit {

  team1: string = '/assets/img/team-1.jpg';
  team2: string = '/assets/img/team-2.jpg';
  imagen: string = this.team1;

  constructor() { }

  ngOnInit(): void {
    this.cambiarImagen();
  }

  cambiarImagen() {
    setInterval(() => {
      this.imagen === this.team1 ? this.imagen = this.team2 : this.imagen = this.team1;
    }, 1000)
  }

}