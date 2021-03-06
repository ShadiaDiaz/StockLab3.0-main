import { Component, OnInit } from '@angular/core';
import { Usuario } from '../stocklab/models/usuario';
import * as Chart from 'chart.js';
import { SolicitudService } from '../services/solicitud.service';
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
  constructor(private solcitudService: SolicitudService) { }

  ngOnInit(): void {
    this.usuario = new Usuario;
    this.solicitudes = [];
    this.numeroSolicitudes = [];
    this.labelsSolicitudes = [];
    this.mapUsuario();
    this.llenarSolicitudesgrafica();
  }

  mapUsuario(){
    var lista = JSON.parse(sessionStorage.getItem('login'));
    if(lista != null){
      this.usuario = lista;
    }
  }



  llenarSolicitudesgrafica(){
    this.mapUsuario();
    this.labelsSolicitudes.push('Aprobado');
    this.labelsSolicitudes.push('Rechazado');
    this.numeroSolicitudes.push(0);
    this.numeroSolicitudes.push(0);
    this.solcitudService.gets().subscribe(result => {
      if(result != null){
        for (let index = 0; index < result.length; index++) {
          if(this.usuario.nombre == result[index].monitor){
            if(result[index].estado == "Aprobado"){
              this.numeroSolicitudes[0] += 1;
            }
            if(result[index].estado == "Rechazado"){
              this.numeroSolicitudes[1] += 1;
            }

          }
        }
      }
      this.graficaSolicitudes();
    });
    
  }

  graficaSolicitudes() {
    this.canvas = document.getElementById('myChart');
    this.ctx = this.canvas.getContext('2d');
    
    const myChart = new Chart(this.ctx, {
      type: 'polarArea',
      data: {
        labels: this.labelsSolicitudes,
        datasets: [{
          label: 'Total cases.',
          data: this.numeroSolicitudes,
          backgroundColor: ['green','Red'],
          borderWidth: 1
        }]
      },
      options: {
        legend: {
          display: true
        },
        responsive: true
      }
    });
  }
}
