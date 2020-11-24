import { Component, Input, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { SolicitudService } from 'src/app/services/solicitud.service';
import { DetalleInsumo } from '../models/detalle-insumo';
import { Solicitud } from '../models/solicitud';
import { Usuario } from '../models/usuario';


@Component({
  selector: 'app-solicitud-individual',
  templateUrl: './solicitud-individual.component.html',
  styleUrls: ['./solicitud-individual.component.css']
})

export class SolicitudIndividualComponent implements OnInit {
  Solicitud: Solicitud;
  usuario: Usuario;
  constructor(private routeActive: ActivatedRoute, private solicitudService: SolicitudService) { }

  ngOnInit(): void {
    this.Solicitud = new Solicitud();
    this.usuario = new Usuario;
    this.llenarUsuario();
    const id = this.routeActive.snapshot.params.numero;

    this.solicitudService.get(id).subscribe(result => {
      this.Solicitud = result;
    });

    
  }

  llenarUsuario() {
    var lista = JSON.parse(sessionStorage.getItem('login'));
    if (lista != null) {
      this.usuario = lista;
      console.log(this.usuario.idPersona);
    }
  }

  
  

}
