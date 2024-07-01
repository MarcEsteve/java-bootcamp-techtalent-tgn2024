import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-event-binding',
  standalone: true,
  imports: [],
  templateUrl: './event-binding.component.html',
  styleUrl: './event-binding.component.css'
})

export class EventBindingComponent implements OnInit {

  timestamp: string = '';
  

  constructor() { }

  ngOnInit(): void {

  }

  setTimestamp(): void {
    const dd = ('0' + new Date().getDate()).slice(-2);
    const MM = ('0' + (new Date().getMonth() + 1)).slice(-2);
    const yy = ('0' + new Date().getFullYear()).slice(-2);
    const hh = ('0' + new Date().getHours()).slice(-2);
    const mm = ('0' + new Date().getMinutes()).slice(-2);
    const ss = ('0' + new Date().getSeconds()).slice(-2);
    const date = dd + '/' + MM + '/' + yy;
    const time = hh + ':' + mm + ':' + ss;
    this.timestamp = `Aceptado el ${date} a las ${time}`;
  }

  rechazar():void {
    const dd = ('0' + new Date().getDate()).slice(-2);
    const MM = ('0' + (new Date().getMonth() + 1)).slice(-2);
    const yy = ('0' + new Date().getFullYear()).slice(-2);
    const hh = ('0' + new Date().getHours()).slice(-2);
    const mm = ('0' + new Date().getMinutes()).slice(-2);
    const ss = ('0' + new Date().getSeconds()).slice(-2);
    const date = dd + '/' + MM + '/' + yy;
    const time = hh + ':' + mm + ':' + ss;
    this.timestamp = `Rechazada la fecha: ${date} a las ${time}`;
  }


}