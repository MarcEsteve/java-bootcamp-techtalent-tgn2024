import { Component, OnInit } from '@angular/core';
import { FormsModule } from '@angular/forms';


@Component({
  selector: 'app-two-ways-binding',
  standalone: true,
  imports: [FormsModule],
  templateUrl: './two-ways-binding.component.html',
  styleUrl:'./two-ways-binding.component.css'
})
export class TwoWayBindingComponent implements OnInit {

  actor: any = {
    nombre: '',
    apellidos: ''
  }

  constructor() { }

  ngOnInit(): void {
  }

}
