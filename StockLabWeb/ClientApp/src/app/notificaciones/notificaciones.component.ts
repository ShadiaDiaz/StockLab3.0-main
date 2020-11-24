import { Component, OnInit } from '@angular/core';
import { SolicitudService } from '../services/solicitud.service';
import { Solicitud } from '../stocklab/models/solicitud';
@Component({
  selector: 'app-notificaciones',
  templateUrl: './notificaciones.component.html',
  styleUrls: ['./notificaciones.component.css']
})
export class NotificacionesComponent implements OnInit {
  solicitudes: Solicitud[];
  constructor(private SolicitudService: SolicitudService) { }

  ngOnInit(): void {
    this.solicitudes = []
    this.get();
  }

  get(){
    this.SolicitudService.gets().subscribe(result => {
      this.solicitudes = result;
    })
  }
}
