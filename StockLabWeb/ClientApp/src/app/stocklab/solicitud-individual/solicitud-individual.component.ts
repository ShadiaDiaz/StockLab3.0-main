import { Component, Input, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { SolicitudService } from 'src/app/services/solicitud.service';
import { DetalleInsumo } from '../models/detalle-insumo';
import { Solicitud } from '../models/solicitud';
import { Usuario } from '../models/usuario';
import { ModalComponent } from 'src/app/@base/modal/modal.component';
import { LoginService } from 'src/app/services/login.service';


@Component({
  selector: 'app-solicitud-individual',
  templateUrl: './solicitud-individual.component.html',
  styleUrls: ['./solicitud-individual.component.css']
})

export class SolicitudIndividualComponent implements OnInit {
  Solicitud: Solicitud;
  usuario: Usuario;
  constructor(private routeActive: ActivatedRoute, private solicitudService: SolicitudService
    ,private modalService: NgbModal, private router: Router, private loginService: LoginService) { 
    }

  ngOnInit(): void {
    this.Solicitud = new Solicitud();
    this.usuario = new Usuario;
    this.llenarUsuario();
    const id = this.routeActive.snapshot.params.numero;

    this.solicitudService.get(id).subscribe(result => {
      this.Solicitud = result;
      if(result != null){
        if(this.loginService.currentUserValue.tipo == 'Docente'){
          if(result.persona.identificacion != this.loginService.currentUserValue.idPersona){
            this.router.navigate(['/']);
          }
        }
      }
    });

    
    this.actualizarListaSignal();
    
  }

  private actualizarListaSignal(){
    this.solicitudService.signalRecived.subscribe((solicitud: Solicitud) => {
        if(solicitud.numero == this.Solicitud.numero){
          this.Solicitud = solicitud;
        }
    });
  }

  llenarUsuario() {
    var lista = JSON.parse(sessionStorage.getItem('login'));
    if (lista != null) {
      this.usuario = lista;
      
    }
  }

  AprobarSolicitud(){
    this.solicitudService.putAprobar(this.Solicitud).subscribe(result => {
      if(result != null)
      {
        const messageBox = this.modalService.open(ModalComponent)​
        messageBox.componentInstance.title = "Resultado Operación";​
        messageBox.componentInstance.cuerpo = 'Solicitud Aprobada!!! :-)';
        this.Solicitud = result;
      }
    });
  }

  rechazarSolicitud(){
    this.Solicitud.estado = "Rechazado";
    this.solicitudService.put(this.Solicitud).subscribe(result => {
      if(result != null){
        const messageBox = this.modalService.open(ModalComponent)​
        messageBox.componentInstance.title = "Resultado Operación";​
        messageBox.componentInstance.cuerpo = 'Solicitud Rechazada!!! :-)';
        this.Solicitud = result;
      }
    });
  }

  
  

}
