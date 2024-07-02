import { CommonModule } from '@angular/common';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-ng-class',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './ng-class.component.html',
  styleUrl: './ng-class.component.css'
})
export class NgClassComponent implements OnInit {

  jugadores: Array<any> = [
    {nombre: 'Magic Johnson', equipo: 'lakers'},
    {nombre: 'Larry Bird', equipo: 'celtics'},
    {nombre: 'Michael Jordan', equipo: 'bulls'},
    {nombre: 'Mark Steve'}
  ]

  constructor() { }

  ngOnInit(): void {
  }

}