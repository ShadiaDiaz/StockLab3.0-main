import { Component, OnInit } from '@angular/core';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { InsumoService } from 'src/app/services/insumo.service';
import { Insumo } from '../models/insumo';
import { ActualizarCantidadInsumoModalComponent } from '../../@base/modal/actualizar-cantidad-insumo-modal/actualizar-cantidad-insumo-modal.component';

@Component({
  selector: 'app-consulta-insumos',
  templateUrl: './consulta-insumos.component.html',
  styleUrls: ['./consulta-insumos.component.css']
})
export class ConsultaInsumosComponent implements OnInit {
insumos: Insumo[];
searchText: string;

name = 'Angular';
  page = 1;
  pageSize =5;
  constructor(private insumoService: InsumoService, private modalService: NgbModal ) { }

  ngOnInit(): void {
    this.insumos = [];
    this.get();
  }

  get()
  {
    this.insumoService.get().subscribe(result =>{
      this.insumos = result;
    });
  }

  AgregarCantidad(insumo: Insumo){
        this.modalService.open(ActualizarCantidadInsumoModalComponent);
        localStorage.removeItem('insumo');
        localStorage.setItem('insumo',insumo.item);
  }



}
