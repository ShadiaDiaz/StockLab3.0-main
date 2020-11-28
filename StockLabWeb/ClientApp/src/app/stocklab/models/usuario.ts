export class Usuario {
    usuario: string;
    password: string;
    nombre: string;
    apellidos: string;
    tipo: string;
    token: string;
    estado: string;
    idPersona: string;

    constructor(){
        this.tipo = "Administrador"
    }
    
}
