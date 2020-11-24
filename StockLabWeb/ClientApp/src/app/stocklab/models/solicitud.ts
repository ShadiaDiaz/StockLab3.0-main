import { Asignatura } from "./asignatura";
import { DetalleInsumo } from "./detalle-insumo";
import { PeriodoAcademico } from "./periodo-academico";
import { Persona } from "./persona";

export class Solicitud {
    numero: string;
    fecha: string;
    fechaSolicitud: string;
    estado: string;
    hora: string;
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
        this.detalles = [];
        this.fecha = new Date(Date.now()).toDateString();
    }
}
