import { HttpClient } from '@angular/common/http';
import { Injectable, OnInit } from '@angular/core';
import { Observable } from 'rxjs';
import { IEmployee } from '../interfaces/employeeInterface';

@Injectable({
  providedIn: 'root',
})
export class EmployeeService implements OnInit{
  private _dataUrl: string =
    'https://webapp-angular-tgn-2024-default-rtdb.europe-west1.firebasedatabase.app/equipo.json';

  constructor(private http: HttpClient) {}
  ngOnInit(): void {
    throw new Error('Method not implemented.');
  }

  getEmployees(): Observable<IEmployee[]> {
    return this.http.get<IEmployee[]>(this._dataUrl);
  }
}