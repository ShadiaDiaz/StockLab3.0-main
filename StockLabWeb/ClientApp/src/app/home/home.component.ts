import { Component } from '@angular/core';
import { SolicitudService } from '../services/solicitud.service';
import { Solicitud } from '../stocklab/models/solicitud';
import { Usuario } from '../stocklab/models/usuario';
import { DetalleInsumo } from '../stocklab/models/detalle-insumo';
import { Asignatura } from '../stocklab/models/asignatura';
import { Insumo } from '../stocklab/models/insumo';
import { InsumoService } from '../services/insumo.service';
import jsPDF from 'jspdf';
import html2canvas from 'html2canvas';


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

  ctx: any;

  numberdetalle: number[];
  numberasignatura: number[];
  labelasignaturas: string[];
  colorasignaturas: string[];
  Insumos: Insumo[];

  dataInsumos: any = {};
  dataAsignaturas: any = {};
  // tslint:disable-next-line:no-shadowed-variable
  constructor(private insumoService: InsumoService, private solicitudService: SolicitudService) {
  }




  // tslint:disable-next-line:use-lifecycle-interface
  ngOnInit(): void {
    this.usuario = new Usuario;
    this.solicitudes = [];
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
    this.llenarAsignaturasGrafica();
    this.getInsumos();
  }



  getInsumos() {
    this.insumoService.get().subscribe(result => {
      if (result != null) {
        this.Insumos = result;
      }
    });
  }

  llenarAsignaturasGrafica() {

    this.solicitudService.gets().subscribe(result => {
      if (result != null) {
        const color = [];
        const r = ['00', '33', '66', '99', 'CC', 'FF'];
        const g = ['00', '33', '66', '99', 'CC', 'FF'];
        const b = ['00', '33', '66', '99', 'CC', 'FF'];

        for (let i = 0; i < r.length; i++) {
          for (let j = 0; j < g.length; j++) {
            for (let k = 0; k < b.length; k++) {
              const nuevoc = '#' + r[i] + g[j] + b[k];
              color.push(nuevoc);
            }
          }
        }

        for (let index = 0; index < result.length; index++) {

          // tslint:disable-next-line:triple-equals
          const detallerespuesta = this.asignaturas.find(d => d.codigo == result[index].asignatura.codigo);
          if (detallerespuesta != null) {
            const numero = this.asignaturas.findIndex(d => d.codigo === result[index].asignatura.codigo);
            this.numberasignatura[numero] += 1;
          } else {
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

    this.dataAsignaturas = {
      labels: this.labelasignaturas,
      datasets: [
        {
          data: this.numberasignatura,
          backgroundColor: this.colorasignaturas,
        }
      ]
    };
  }



  llenarinsumografica() {

    this.solicitudService.gets().subscribe(result => {
      if (result != null) {
        for (let index = 0; index < result.length; index++) {

          for (let index2 = 0; index2 < result[index].detalles.length; index2++) {

            const detallerespuesta = this.detalles.find(d => d.insumo.item === result[index].detalles[index2].insumo.item);
            if (detallerespuesta != null) {
              const numero = this.detalles.findIndex(d => d.insumo.item === result[index].detalles[index2].insumo.item);
              this.detalles[numero].cantidad += result[index].detalles[index2].cantidad;
            } else {
              this.detalles.push(result[index].detalles[index2]);
            }
          }

        }

        this.graficaSolicitudes();
      }
    });

  }
  randomColor(lista: any) {
    return lista[Math.floor(Math.random() * lista.length)];
  }


  graficaSolicitudes() {
    const labelsdetalle = [];
    const colordetalle = [];
    const colordetalle2 = [];
    const r = ['00', '33', '66', '99', 'CC', 'FF'];
    const g = ['00', '33', '66', '99', 'CC', 'FF'];
    const b = ['00', '33', '66', '99', 'CC', 'FF'];

    for (let i = 0; i < r.length; i++) {
      for (let j = 0; j < g.length; j++) {
        for (let k = 0; k < b.length; k++) {
          const nuevoc = '#' + r[i] + g[j] + b[k];
          colordetalle.push(nuevoc);
        }
      }
    }

    for (let index = 0; index < this.detalles.length; index++) {
      labelsdetalle.push(this.detalles[index].insumo.descripcion);
      this.numberdetalle.push(this.detalles[index].cantidad);
      colordetalle2.push(this.randomColor(colordetalle));

    }

    this.dataInsumos = {
      labels: labelsdetalle,
      datasets: [
        {
          data: this.numberdetalle,
          backgroundColor: colordetalle2
        }]
    };

  }

  obtenerUsuario() {
    const lista = JSON.parse(sessionStorage.getItem('login'));
    if (lista != null) {
      this.usuario = lista;
    }
  }

  get() {
    this.solicitudService.gets().subscribe(result => {
      if (result != null) {
        this.solicitudes = result;
        this.graficaSolicitudesFecha();
      }
    });
  }

  graficaSolicitudesFecha() {
    let cantidadsolicitudes = 0;
    for (let index = 0; index < this.solicitudes.length; index++) {
      cantidadsolicitudes += 1;
    }

  }



  downloadPDF() {
    // Extraemos el
    const DATA = document.getElementById('htmlData');
    const doc = new jsPDF('p', 'pt', 'a4');
    const options = {
      background: 'white',
      scale: 3
    };
    html2canvas(DATA, options).then((canvas) => {

      const img = canvas.toDataURL('image/PNG');

      // Add image Canvas to PDF
      const bufferX = 15;
      const bufferY = 15;
      const imgProps = (doc as any).getImageProperties(img);
      const pdfWidth = doc.internal.pageSize.getWidth() - 2 * bufferX;
      const pdfHeight = (imgProps.height * pdfWidth) / imgProps.width;
      doc.addImage(img, 'PNG', bufferX, bufferY, pdfWidth, pdfHeight, undefined, 'FAST');
      return doc;
    }).then((docResult) => {
      docResult.save(`${new Date().toISOString()}_tutorial.pdf`);
    });
  }

}

