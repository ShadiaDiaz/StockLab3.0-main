import { Insumo } from "./insumo";
import { Solicitud } from "./solicitud";

export class DetalleInsumo {
    numeroDetalle: string;
    fecha: string;
    cantidad: number;
    codigoinsumo: string;
    insumo: Insumo;

    constructor(){
        this.insumo = new Insumo;
    }

    agregarDetalle(fecha:Date, insum: Insumo, codigo: string){
        this.fecha = fecha.getDate() + "/" + (fecha.getMonth() + 1) + "/" + fecha.getFullYear();
        this.insumo = insum;
        this.codigoinsumo = insum.item;
        this.numeroDetalle = codigo;
    }
}
