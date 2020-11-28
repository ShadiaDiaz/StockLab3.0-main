import { Component } from '@angular/core';
import { from } from 'rxjs';
import { SolicitudService } from '../services/solicitud.service';
import { Solicitud } from '../stocklab/models/solicitud';
import { LoginService } from './../services/login.service';
import { Usuario } from './../stocklab/models/usuario';
import * as Chart from 'chart.js';


@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
})
export class HomeComponent {
  usuario: Usuario;
  solicitudes: Solicitud[];
  canvas: any;
  ctx: any;
  constructor(private LoginService: LoginService, private SolicitudService: SolicitudService) {
  }




  ngOnInit(): void {
    this.usuario = new Usuario;
    this.solicitudes = []
    this.get();
    this.obtenerUsuario();
    this.graficaSolicitudes();
  }

  graficaSolicitudes() {
    this.canvas = document.getElementById('myChart');
    this.ctx = this.canvas.getContext('2d');
    const myChart = new Chart(this.ctx, {
      type: 'bar',
      data: {
        labels: ['USA', 'Spain', 'Italy', 'France', 'Germany', 'UK', 'Turkey', 'Iran', 'China', 'Russia', 'Brazil', 'Belgium', 'Canada', 'Netherlands', 'Switzerland', 'India', 'Portugal', 'Peru', 'Ireland', 'Sweden'],
        datasets: [{
          label: 'Total cases.',
          data: [886789, 213024, 189973, 158183, 153129, 138078, 101790, 87026, 82804, 62773, 50036, 42797, 42110, 35729, 28496, 23502, 22353, 20914, 17607, 16755],
          backgroundColor: ['red', , , , , , , , 'orange'],
          borderWidth: 1
        }]
      },
      options: {
        legend: {
          display: false
        },
        responsive: false
      }
    });
  }

obtenerUsuario() {
  var lista = JSON.parse(sessionStorage.getItem('login'));
  if (lista != null) {
    this.usuario = lista;
  }
}

get() {
  this.SolicitudService.gets().subscribe(result => {
    this.solicitudes = result;
    console.log(result);
  })
}

updateEstado(solicitud: Solicitud) {
  solicitud.estado = "leido";
  this.SolicitudService.put(solicitud).subscribe(result => {
    solicitud = result;
  });
}

}

