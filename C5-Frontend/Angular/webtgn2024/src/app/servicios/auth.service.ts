import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { CookieService } from 'ngx-cookie-service';
import { Observable } from 'rxjs';
import { User } from '../interfaces/user.interface';

@Injectable({
  providedIn: 'root'
})
export class AuthService {
  private users: User[] = [];

  constructor(private http: HttpClient, private cookieService: CookieService) {
    this.loadUsers().subscribe(users => {
      this.users = users;
    });
  }

  loadUsers(): Observable<User[]> {
    return this.http.get<User[]>('https://webapp-angular-tgn-2024-default-rtdb.europe-west1.firebasedatabase.app/usuarios.json');
  }

  login(username: string, password: string): boolean {
    const user = this.users.find(user => user.usuario === username && atob(user.pass) === password);
    // atob
    if (user) {
      this.cookieService.set('username', username, { expires: 2, sameSite: 'Lax' });
      this.cookieService.set('isLoggedIn', 'true', { expires: 2, sameSite: 'Lax' });
      return true;
    }
    return false;
  }

  isLoggedIn(): boolean {
    return this.cookieService.check('isLoggedIn') && this.cookieService.get('isLoggedIn') === 'true';
  }

  getUsername(): string {
    return this.cookieService.get('username');
  }

  logout(): void {
    this.cookieService.delete('username');
    this.cookieService.delete('isLoggedIn');
  }

  getUsuarioDB(): User | undefined {
    const username = this.getUsername();
    return this.users.find(user => user.usuario === username);
  }

}
