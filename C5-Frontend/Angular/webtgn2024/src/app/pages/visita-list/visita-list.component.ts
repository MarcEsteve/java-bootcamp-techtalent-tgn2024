import { Component, OnInit } from '@angular/core';
import { AuthVisitaService } from '../../servicios/auth-visita.service';
import { FormsModule } from '@angular/forms';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-visita-list',
  standalone:true,
  imports: [FormsModule, CommonModule],
  templateUrl: './visita-list.component.html',
  styleUrls: ['./visita-list.component.css']
})
export class VisitaListComponent implements OnInit {
  visitas: any[] = [];
  nuevaVisita: any = {};
  visitaSeleccionada: any = {};

  constructor(private authVisitaService: AuthVisitaService) {}

  ngOnInit(): void {
    this.getVisitas();
  }

  getVisitas(): void {
    this.authVisitaService.getVisitas().subscribe(
      visitas => {
        this.visitas = visitas;
      },
      error => {
        console.error('Error al obtener las visitas:', error);
      }
    );
  }

  seleccionarVisita(visita: any): void {
    this.visitaSeleccionada = { ...visita };
  }

  agregarVisita(): void {
    this.authVisitaService.addVisita(this.nuevaVisita).subscribe(
      response => {
        console.log('Visita añadida correctamente:', response);
        this.nuevaVisita = {};
        this.getVisitas(); // Actualizar la lista de visitas después de añadir una nueva
      },
      error => {
        console.error('Error al añadir visita:', error);
      }
    );
  }

  actualizarVisita(): void {
    this.authVisitaService.updateVisita(this.visitaSeleccionada).subscribe(
      response => {
        console.log('Visita actualizada correctamente:', response);
        this.visitaSeleccionada = {}; // Limpiar visita seleccionada
        this.getVisitas(); // Actualizar la lista de visitas después de actualizar
      },
      error => {
        console.error('Error al actualizar visita:', error);
      }
    );
  }

  eliminarVisita(id: number): void {
    this.authVisitaService.deleteVisita(id).subscribe(
      response => {
        console.log('Visita eliminada correctamente:', response);
        this.getVisitas(); // Actualizar la lista de visitas después de eliminar
      },
      error => {
        console.error('Error al eliminar visita:', error);
      }
    );
  }
}
