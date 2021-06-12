import { Component, OnInit } from '@angular/core';
import { Usuario } from '../stocklab/models/usuario';
import { Solicitud } from '../stocklab/models/solicitud';

@Component({
  selector: 'app-perfil',
  templateUrl: './perfil.component.html',
  styleUrls: ['./perfil.component.css']
})
export class PerfilComponent implements OnInit {

  usuario: Usuario;
  canvas: any;
  ctx: any;
  solicitudes: Solicitud[];
  numeroSolicitudes: number[];
  labelsSolicitudes: string[];
  constructor() { }

  ngOnInit(): void {
    this.usuario = new Usuario;
    this.solicitudes = [];
    this.numeroSolicitudes = [];
    this.labelsSolicitudes = [];
    this.mapUsuario();
  }

  mapUsuario() {
    const lista = JSON.parse(sessionStorage.getItem('login'));
    if (lista != null) {
      this.usuario = lista;
    }
  }
}
