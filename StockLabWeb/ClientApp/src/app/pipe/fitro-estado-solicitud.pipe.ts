import { Pipe, PipeTransform } from '@angular/core';
import { Solicitud } from '../stocklab/models/solicitud';

@Pipe({
  name: 'fitroEstadoSolicitud'
})
export class FitroEstadoSolicitudPipe implements PipeTransform {

  transform(solicitud: Solicitud[], searchDescripcion: string): unknown {
    if(searchDescripcion == null) return solicitud.filter(d => d.estado.toLowerCase().indexOf("Activo".toLowerCase())!==-1);
    return solicitud.filter(d => d.estado.toLowerCase().indexOf(searchDescripcion.toLowerCase())!==-1);
  }

}
