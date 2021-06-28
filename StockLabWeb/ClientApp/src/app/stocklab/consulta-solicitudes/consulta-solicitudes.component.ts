import { Component, OnInit } from '@angular/core';
import { SolicitudService } from 'src/app/services/solicitud.service';
import { Solicitud } from '../models/solicitud';
import { Usuario } from '../models/usuario';

@Component({
  selector: 'app-consulta-solicitudes',
  templateUrl: './consulta-solicitudes.component.html',
  styleUrls: ['./consulta-solicitudes.component.css']
})
export class ConsultaSolicitudesComponent implements OnInit {
  searchText: string;
  solicitudes: Solicitud[];
  usuario: Usuario;
  page = 1;
  pageSize = 5;
  pageSizeOptions: number[] = [5, 10, 25, 100];
  constructor(private service: SolicitudService) { }

  ngOnInit(): void {
    this.solicitudes = [];
    this.usuario = new Usuario;
    this.llenarUsuario();
    this.get();
    this.actualizarListaSignal();
  }

  private actualizarListaSignal() {
    this.service.signalRecived.subscribe((solicitud: Solicitud) => {
      this.solicitudes.push(solicitud);
    });
  }

  llenarUsuario() {
    const lista = JSON.parse(sessionStorage.getItem('login'));
    if (lista != null) {
      this.usuario = lista;
    }
  }

  get() {
    this.solicitudes = [];
    this.service.gets().subscribe(result => {
      if (this.usuario.idRole !== 1) {
        this.solicitudes = result;
        console.log(result);
      } else {
        for (let index = 0; index < result.length; index++) {
          if (result[index].persona.identificacion === this.usuario.idPersona) {
            this.solicitudes.push(result[index]);
          }
        }
      }
    });
  }

}
