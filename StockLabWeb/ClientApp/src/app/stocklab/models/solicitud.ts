import { Asignatura } from "./asignatura";
import { DetalleInsumo } from "./detalle-insumo";
import { PeriodoAcademico } from "./periodo-academico";
import { Persona } from "./persona";

export class Solicitud {
    numero: string;
    //entrega de la solicitud (cambiar)
    fecha: string;
    //fecha de la solicitud (cambiar)
    fechaSolicitud: string;
    estado: string;
    monitor: string;
    idpersona: string;
    asignatura: Asignatura;
    detalles: DetalleInsumo[];
    periodoAcademico: PeriodoAcademico;
    persona: Persona;
    cantidadinsumos: number;
    
    constructor(){
        this.asignatura = new Asignatura;
        this.persona = new Persona;
        this.periodoAcademico = new PeriodoAcademico;
        this.detalles = [];
        this.fecha = new Date(Date.now()).toDateString();
    }
}
