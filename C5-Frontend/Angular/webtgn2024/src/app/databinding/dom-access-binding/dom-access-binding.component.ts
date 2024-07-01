import { Component, ElementRef, OnInit, QueryList, Renderer2, ViewChild, ViewChildren } from '@angular/core';

@Component({
  selector: 'app-dom-access-binding',
  standalone: true,
  templateUrl: './dom-access-binding.component.html',
  styleUrl: './dom-access-binding.component.css'
})

export class DOMAccessComponent implements OnInit {

  @ViewChild('lista') listaRef: ElementRef | any; 
  // Sustituye a document.getElementByid('lista')

  @ViewChildren('item') itemsRef: QueryList<any> | any;

  constructor(private renderer: Renderer2) {
    
  }

  ngOnInit(): void {

  }

  ngAfterViewInit(): void {
    this.renderer.setStyle(this.listaRef.nativeElement, 'padding-left', '200px'); // style...
  }

  setDone(i: number): void {
    this.itemsRef.forEach((elem: any, index: number) => {
      if(index === i) {
        if(elem.nativeElement.style.textDecoration === '') {
          this.renderer.setStyle(elem.nativeElement, 'text-decoration', 'line-through');
        } else {
          this.renderer.setStyle(elem.nativeElement, 'text-decoration', '');
        }
      }
    })
  }

}