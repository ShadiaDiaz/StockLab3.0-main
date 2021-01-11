import { Component } from '@angular/core';
import { from } from 'rxjs';
import { SolicitudService } from '../services/solicitud.service';
import { Solicitud } from '../stocklab/models/solicitud';
import { LoginService } from './../services/login.service';
import { Usuario } from './../stocklab/models/usuario';
import * as Chart from 'chart.js';
import { DetalleInsumo } from '../stocklab/models/detalle-insumo';
import { Asignatura } from '../stocklab/models/asignatura';
import { Insumo } from '../stocklab/models/insumo';
import { InsumoService } from '../services/insumo.service';


@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
})
export class HomeComponent {
  usuario: Usuario;
  solicitudes: Solicitud[];
  detalles: DetalleInsumo[];
  asignaturas: Asignatura[];

  canvas: any;
  canvas2: any;

  ctx: any;
  ctx2: any;

  numberdetalle: number[];
  numberasignatura: number[];
  labelasignaturas: string[];
  colorasignaturas: string[];
  Insumos: Insumo[];
  constructor(private insumoService: InsumoService, private SolicitudService: SolicitudService) {
  }




  ngOnInit(): void {
    this.usuario = new Usuario;
    this.solicitudes = []
    this.detalles = [];
    this.numberasignatura = [];
    this.asignaturas = [];
    this.numberdetalle = [];
    this.labelasignaturas = [];
    this.colorasignaturas = [];
    this.Insumos = [];
    this.get();
    this.obtenerUsuario();
    this.llenarinsumografica();
    this.graficaAsignaturas();
    this.llenarAsignaturasGrafica();
    this.getInsumos();
  }



  getInsumos(){
    this.insumoService.get().subscribe(result =>{
      if(result != null){
        this.Insumos = result;
      }
    });
  }

  llenarAsignaturasGrafica() {

    this.SolicitudService.gets().subscribe(result => {
      if (result != null) {
        var color = [];
        var r = new Array("00", "33", "66", "99", "CC", "FF");
        var g = new Array("00", "33", "66", "99", "CC", "FF");
        var b = new Array("00", "33", "66", "99", "CC", "FF");

        for (var i = 0; i < r.length; i++) {
          for (var j = 0; j < g.length; j++) {
            for (var k = 0; k < b.length; k++) {
              var nuevoc = "#" + r[i] + g[j] + b[k];
              color.push(nuevoc);
            }
          }
        }

        for (let index = 0; index < result.length; index++) {

          var detallerespuesta = this.asignaturas.find(d => d.codigo == result[index].asignatura.codigo);
          if (detallerespuesta != null) {
            var numero = this.asignaturas.findIndex(d => d.codigo == result[index].asignatura.codigo);
            this.numberasignatura[numero] += 1;
          }
          else {
            this.asignaturas.push(result[index].asignatura);
            this.labelasignaturas.push(result[index].asignatura.nombre);
            this.numberasignatura.push(1);
            this.colorasignaturas.push(this.randomColor(color));
          }


        }

        this.graficaAsignaturas();
      }
    });
  }




  graficaAsignaturas() {
    this.canvas2 = document.getElementById('myChart2');
    this.ctx2 = this.canvas2.getContext('2d');

    const myChart2 = new Chart(this.ctx2, {
      type: 'polarArea',
      data: {
        labels: this.labelasignaturas,
        datasets: [{
          label: 'Total cases.',
          data: this.numberasignatura,
          backgroundColor: this.colorasignaturas,
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

  llenarinsumografica() {
    
    this.SolicitudService.gets().subscribe(result => {
      if (result != null) {
        for (let index = 0; index < result.length; index++) {

          for (let index2 = 0; index2 < result[index].detalles.length; index2++) {
            
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
        
        this.graficaSolicitudes();
      }
    });

  }
  randomColor(lista: any) {
    return lista[Math.floor(Math.random() * lista.length)]
  }


  graficaSolicitudes() {
    this.canvas = document.getElementById('myChart');
    this.ctx = this.canvas.getContext('2d');
    var labelsdetalle = [];
    var colordetalle = [];
    var colordetalle2 = [];
    var r = new Array("00", "33", "66", "99", "CC", "FF");
    var g = new Array("00", "33", "66", "99", "CC", "FF");
    var b = new Array("00", "33", "66", "99", "CC", "FF");

    for (var i = 0; i < r.length; i++) {
      for (var j = 0; j < g.length; j++) {
        for (var k = 0; k < b.length; k++) {
          var nuevoc = "#" + r[i] + g[j] + b[k];
          colordetalle.push(nuevoc);
        }
      }
    }

    for (let index = 0; index < this.detalles.length; index++) {
      labelsdetalle.push(this.detalles[index].insumo.descripcion);
      this.numberdetalle.push(this.detalles[index].cantidad);
      colordetalle2.push(this.randomColor(colordetalle));

    }

    
    const myChart = new Chart(this.ctx, {
      type: 'doughnut',
      data: {
        labels: labelsdetalle,
        datasets: [{
          label: 'Total cases.',
          data: this.numberdetalle,
          backgroundColor: colordetalle2,
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

  graficaSolicitudesFecha() {
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

  pdfPrueba(){
    this.SolicitudService.pdf("semestre2");
  }

}

