import { Component } from '@angular/core';
import { NumeroPipe } from '../numero.pipe';
import { CurrencyPipe, DatePipe, DecimalPipe, JsonPipe, LowerCasePipe, PercentPipe, SlicePipe, TitleCasePipe, UpperCasePipe } from '@angular/common';

@Component({
  selector: 'app-pipes',
  standalone: true,
  imports: [NumeroPipe, LowerCasePipe, UpperCasePipe, TitleCasePipe, SlicePipe, DatePipe, PercentPipe, CurrencyPipe, JsonPipe, DecimalPipe],
  templateUrl: './pipes.component.html',
  styleUrl: './pipes.component.css'
})
export class PipesComponent {

  texto = 'ciudad de Madrid';
  id: any = 13;
  fecha = new Date();
  importe = 12346.678;
  aciertos = .0967654;

  actor = {
    nombre: 'Robert',
    apellidos: 'De Niro'
  }

  cantidad = 1576571.657657;
  monedaEU = '€';
  monedaDL = '$'

  ngOnInit() {
    this.id = '000' + this.id;
  }

}
