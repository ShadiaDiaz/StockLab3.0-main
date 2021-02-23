import { Persona } from "./persona";

export class Chat {
    codigo: string;
    mensaje: string;
    idPersona: string;
    admin: string;
    persona: Persona;

    constructor(){
        this.mensaje = "";
    }
}
