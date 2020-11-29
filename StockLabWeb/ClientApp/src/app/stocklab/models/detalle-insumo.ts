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
}
