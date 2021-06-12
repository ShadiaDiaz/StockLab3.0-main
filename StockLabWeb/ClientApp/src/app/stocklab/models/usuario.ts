export class Usuario {
    usuario: string;
    password: string;
    nombre: string;
    apellidos: string;
    idRole: number;
    tipo: string;
    token: string;
    estado: string;
    idPersona: string;

    constructor() {
        this.idRole = 0;
    }
}
