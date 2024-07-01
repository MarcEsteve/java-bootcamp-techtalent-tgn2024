import { CommonModule } from '@angular/common';
import { Component, OnInit } from '@angular/core';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-ng-if',
  standalone: true,
  imports: [FormsModule, CommonModule],
  templateUrl: './ng-if.component.html',
  styles: ``
})
export class NgIfComponent implements OnInit {

  puntuacion: number | null = null;

  constructor() { }

  ngOnInit(): void {
  }

}
