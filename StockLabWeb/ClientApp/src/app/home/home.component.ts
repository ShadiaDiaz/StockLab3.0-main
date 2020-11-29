import { Component } from '@angular/core';
import { from } from 'rxjs';
import { SolicitudService } from '../services/solicitud.service';
import { Solicitud } from '../stocklab/models/solicitud';
import { LoginService } from './../services/login.service';
import { Usuario } from './../stocklab/models/usuario';
import * as Chart from 'chart.js';
import { DetalleInsumo } from '../stocklab/models/detalle-insumo';


@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
})
export class HomeComponent {
  usuario: Usuario;
  solicitudes: Solicitud[];
  detalles: DetalleInsumo[];
  canvas: any;
  ctx: any;
  numberdetalle: number[];
  constructor(private LoginService: LoginService, private SolicitudService: SolicitudService) {
  }




  ngOnInit(): void {
    this.usuario = new Usuario;
    this.solicitudes = []
    this.detalles = [];
    this.numberdetalle = [];
    this.get();
    this.obtenerUsuario();
    this.llenarinsumografica();
  }

  llenarinsumografica() {
    console.log(this.solicitudes);
    this.SolicitudService.gets().subscribe(result => {
      if (result != null) {
        for (let index = 0; index < result.length; index++) {

          for (let index2 = 0; index2 < result[index].detalles.length; index2++) {
            console.log(result[index].detalles[index2]);
            var detallerespuesta = this.detalles.find(d => d.insumo.item == result[index].detalles[index2].insumo.item);
            if (detallerespuesta != null) {
              var numero = this.detalles.findIndex(d => d.insumo.item == result[index].detalles[index2].insumo.item)
              this.detalles[numero].cantidad += result[index].detalles[index2].cantidad;
            }
            else {
              this.detalles.push(result[index].detalles[index2]);
            }
          }

        }
        console.log(this.detalles);
        this.graficaSolicitudes();
      }
    })

  }

  graficaSolicitudes() {
    this.canvas = document.getElementById('myChart');
    this.ctx = this.canvas.getContext('2d');
    var labelsdetalle = [];
    var colordetalle = [];
    for (let index = 0; index < this.detalles.length; index++) {
      labelsdetalle.push(this.detalles[index].insumo.descripcion);
      this.numberdetalle.push(this.detalles[index].cantidad);
      if (this.detalles[index].cantidad <= 100) {
        colordetalle.push('red');
      }
      if (this.detalles[index].cantidad > 100 && this.detalles[index].cantidad < 500) {
        colordetalle.push('orange');
      }
      if (this.detalles[index].cantidad >= 500) {
        colordetalle.push('green');
      }
    }
    console.log(this.numberdetalle);
    const myChart = new Chart(this.ctx, {
      type: 'bar',
      data: {
        labels: labelsdetalle,
        datasets: [{
          label: 'Total cases.',
          data: this.numberdetalle,
          backgroundColor: colordetalle,
          borderWidth: 1
        }]
      },
      options: {
        legend: {
          display: false
        },
        responsive: true
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
      if (result != null) {
        this.solicitudes = result;
        this.graficaSolicitudesFecha();
      }
    });
  }

  graficaSolicitudesFecha(){
    var cantidadsolicitudes = 0;
    var fechasolicitudes = [];
    var labelsolicitudes = [];
    for (let index = 0; index < this.solicitudes.length; index++) {
      cantidadsolicitudes += 1;
    }
    
  }

  updateEstado(solicitud: Solicitud) {
    solicitud.estado = "leido";
    this.SolicitudService.put(solicitud).subscribe(result => {
      solicitud = result;
    });
  }

}

