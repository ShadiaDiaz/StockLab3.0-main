import { Pipe, PipeTransform } from '@angular/core';
import { Asignatura } from '../stocklab/models/asignatura';

@Pipe({
  name: 'filtroAsignatura'
})
export class FiltroAsignaturaPipe implements PipeTransform {

  transform(asignaturas: Asignatura[], searchName: string): any {
    if(searchName == null) return asignaturas;
    return asignaturas.filter( a=> a.nombre.toLowerCase().indexOf(searchName.toLowerCase())!==-1);
    
  }

}
