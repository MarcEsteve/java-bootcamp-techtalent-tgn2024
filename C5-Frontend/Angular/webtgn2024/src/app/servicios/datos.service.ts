import { Injectable } from '@angular/core';
import { InfoPagina } from '../interfaces/info-pagina.interface';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root',
})
export class DatosService {
  info: InfoPagina = {};

  constructor(private http: HttpClient) {
    console.log('Hola datos');
    this.http
      .get('assets/data/data-pagina.json')
      .subscribe((resp: InfoPagina) => {
        this.info = resp; // provar resp. I veurem les propietats JSON
        console.log(resp);
      });
  }
}
