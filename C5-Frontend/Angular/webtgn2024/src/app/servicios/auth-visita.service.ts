import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';
import { CookieService } from 'ngx-cookie-service';

@Injectable({
  providedIn: 'root'
})
export class AuthVisitaService {
  private visitasUrl = 'https://webapp-angular-tgn-2024-default-rtdb.europe-west1.firebasedatabase.app/visita.json';

  constructor(private http: HttpClient, private cookieService: CookieService) {}

  // Método para obtener todas las visitas
  getVisitas(): Observable<any[]> {
    return this.http.get<any[]>(this.visitasUrl);
  }

  // Método para obtener una visita por su _id
  getVisitaById(id: number): Observable<any> {
    return this.http.get<any[]>(this.visitasUrl).pipe(
      map(visitas => visitas.find(visita => visita._id === id))
    );
  }

  // Método para crear una nueva visita
  addVisita(visita: any): Observable<any> {
    return this.http.post<any>(this.visitasUrl, visita);
  }

  // Método para actualizar una visita existente por su _id
  updateVisita(visita: any): Observable<any> {
    const url = `${this.visitasUrl}/${visita._id}.json`;
    return this.http.put<any>(url, visita);
  }

  // Método para eliminar una visita por su _id
  deleteVisita(id: number): Observable<any> {
    const url = `${this.visitasUrl}/${id}.json`;
    return this.http.delete<any>(url);
  }

  // Métodos de gestión de cookies para controlar la sesión de la visita
  isLoggedIn(): boolean {
    return this.cookieService.check('isLoggedIn') && this.cookieService.get('isLoggedIn') === 'true';
  }

  getId(): string {
    return this.cookieService.get('id');
  }

  logout(): void {
    this.cookieService.deleteAll();
  }
}
