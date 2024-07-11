import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpClient } from '@angular/common/http';
import { User } from '../../interfaces/user.interface';
import { RouterLink, Router } from '@angular/router';

@Component({
  selector: 'app-register',
  standalone: true,
  imports: [CommonModule, FormsModule, RouterLink],
  templateUrl: './register.component.html',
  styleUrl: './register.component.css'
})
export class RegisterComponent {
  username: string = '';
  password: string = '';
  _id:number | undefined = 0;
  users: User[] = []; // Usar la interfaz User[]

  constructor(private http: HttpClient, private router: Router) {
    // Cargar usuarios existentes al iniciar el componente
    this.loadUsers();
  }

  loadUsers() {
    // Realizar una solicitud GET para obtener los usuarios actuales desde el archivo JSON
    this.http.get<User[]>('https://webapp-angular-tgn-2024-default-rtdb.europe-west1.firebasedatabase.app/usuarios.json').subscribe(
      users => {
        this.users = users;
      },
      error => {
        console.error('Error al cargar los usuarios:', error);
        alert('Error al cargar los usuarios');
      }
    );
  }

  register() {
    // Validar que el nombre de usuario no esté duplicado (opcional)
    if (this.users.some(user => user.usuario === this.username)) {
      alert('El nombre de usuario ya está registrado');
      return;
    } 

    if (this.username !== '' && this.password !== '') {
      // Agregar el nuevo usuario al array
    const newUser: User = {
      usuario: this.username,
      pass: btoa(this.password), //btoa
      _id: Math.round(Math.random()*10000)
    };
    this.users.push(newUser);

    // Guardar el array de usuarios actualizado en el archivo JSON
    this.http.put('https://webapp-angular-tgn-2024-default-rtdb.europe-west1.firebasedatabase.app/usuarios.json', this.users).subscribe(
      () => {
        alert('Registro exitoso');
        this.router.navigate(['/login']); // Redirige a la ruta /login
        this.username = '';
        this.password = '';
      },
      error => {
        console.error('Error al guardar el usuario:', error);
        alert('Error al registrar el usuario');
      }
    );
    } else {
      alert('Rellena los campos vacios');
    }
    
  }
}
