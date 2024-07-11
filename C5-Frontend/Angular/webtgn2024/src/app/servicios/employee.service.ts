import { HttpClient } from '@angular/common/http';
import { Injectable} from '@angular/core';
import { Observable } from 'rxjs';
import { IEmployee } from '../interfaces/employeeInterface';

@Injectable({
  providedIn: 'root',
})
export class EmployeeService{
  // 1 URL de nuestra información en la base de datos Real Time Database de Firebase
  private urlEquipo: string = 'https://webapp-angular-tgn-2024-default-rtdb.europe-west1.firebasedatabase.app/equipo.json';

  // 2 Inyección de dependencias del protocolo httpclient
  constructor(private http: HttpClient) {}

  // 3 Método que devuelve un observable con los datos array de la interfaz (_id, nom, titulo, img...)
  getEmployees(): Observable<IEmployee[]> {
    return this.http.get<IEmployee[]>(this.urlEquipo);
  }
}