import { Asignatura } from "./asignatura";
import { Chat } from "./chat";
import { Solicitud } from "./solicitud";
import { Usuario } from "./usuario";
export class Persona {
    identificacion: string;
    nombre: string;
    apellidos: string;
    correo: string;
    celular: string;
    edad: number;
    sexo: string;
    solicitudes: Solicitud[];
    usuario: Usuario;
    mensaje: Chat;

    constructor()
    {
        this.mensaje = new Chat();
        this.mensaje.mensaje = "";
    }
}
