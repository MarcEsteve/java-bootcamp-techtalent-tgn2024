import { Injectable } from '@angular/core';
// import { HttpClient } from '@angular/common/http';
// import { InfoPagina } from '../interfases/info-pagina.interface';

@Injectable({
  providedIn: 'root',
})
export class InfoPaginaService {
  //info: InfoPagina = {}; // Si no tenim la interface InfoPagina seria de tipus InfoPagina|any
  //cargada = false; // No cal dir boolean
  // private http: HttpClient | any;
  constructor() {
    console.log('Servicio de infoPagina listo');
    // Leer el archivo JSON
    // this.http
    //   .get('assets/data/data-pagina.json')
    //   .subscribe((resp: InfoPagina) => {
    //     this.cargada = true;
    //     this.info = resp; // provar resp. I veurem les propietats JSON
    //     console.log(resp);
    //   });
  }
}
