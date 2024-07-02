import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'prueba',
  standalone: true
})
export class PruebaPipe implements PipeTransform {

  transform(value: unknown, ...args: unknown[]): unknown {
    return null;
  }

}
