import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-property-binding',
  templateUrl: './property-binding.component.html',
  styles: `
  img {
    width: 300px;
  }
  `
})
export class PropertyBindingComponent implements OnInit {

  logoRojo: string = '/assets/img/team-1.jpg';
  logoBlanco: string = '/assets/img/team-2.jpg';
  imagen: string = this.logoRojo;

  constructor() { }

  ngOnInit(): void {
    this.cambiarImagen();
  }

  cambiarImagen() {
    setInterval(() => {
      this.imagen === this.logoRojo ? this.imagen = this.logoBlanco : this.imagen = this.logoRojo;
    }, 1000)
  }

}