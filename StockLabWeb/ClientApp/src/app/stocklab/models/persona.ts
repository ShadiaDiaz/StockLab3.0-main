import { Asignatura } from "./asignatura";
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
}
