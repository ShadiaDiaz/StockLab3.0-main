import { Pipe, PipeTransform } from '@angular/core';
import { Insumo } from '../stocklab/models/insumo';

@Pipe({
  name: 'filtroInsumo'
})
export class FiltroInsumoPipe implements PipeTransform {

  transform(insumos: Insumo[], searchDescripcion: string): unknown {
    if(searchDescripcion == null) return insumos;
    return insumos.filter(d => d.descripcion.toLowerCase().indexOf(searchDescripcion.toLowerCase())!==-1);
  }

}
