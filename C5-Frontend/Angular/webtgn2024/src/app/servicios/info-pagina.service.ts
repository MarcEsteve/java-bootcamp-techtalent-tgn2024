import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class InfoPaginaService {

  info: InfoPagina = {};

  constructor(private http: HttpClient) {
    // console.log("Servicio de infoPagina listo")

    // Leer el archivo JSON
    this.http
    .get('assets/data/data-pagina.json')
    .subscribe((resp: InfoPagina) => {
      this.info = resp; // provar resp. I veurem les propietats JSON
      console.log(resp);
    });
  }
}
