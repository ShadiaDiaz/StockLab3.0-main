import { Component } from '@angular/core';
import { from } from 'rxjs';
import { SolicitudService } from '../services/solicitud.service';
import { Solicitud } from '../stocklab/models/solicitud';
import { LoginService } from './../services/login.service';
import { Usuario } from './../stocklab/models/usuario';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
})
export class HomeComponent {
  usuario: Usuario;
  solicitudes: Solicitud[];
  constructor(private LoginService: LoginService, private SolicitudService: SolicitudService) {
  }

  ngOnInit(): void {
    this.usuario = new Usuario;
    this.solicitudes = []
    this.get();
    this.obtenerUsuario();
  }

  obtenerUsuario(){
    var lista = JSON.parse(sessionStorage.getItem('login'));
    if(lista != null){
      this.usuario = lista;
    }
  }

  get(){
    this.SolicitudService.gets().subscribe(result => {
      this.solicitudes = result;
      console.log(result);
    })
  }

  updateEstado(solicitud: Solicitud){
    solicitud.estado = "leido";
    this.SolicitudService.put(solicitud).subscribe(result => {
        solicitud = result;
    });
  }

}

