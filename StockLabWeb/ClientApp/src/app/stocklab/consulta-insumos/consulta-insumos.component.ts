import { Component, OnInit } from '@angular/core';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { InsumoService } from 'src/app/services/insumo.service';
import { Insumo } from '../models/insumo';
import { ActualizarCantidadInsumoModalComponent } from '../../@base/modal/actualizar-cantidad-insumo-modal/actualizar-cantidad-insumo-modal.component';
import { Router } from '@angular/router';
import { LoginService } from 'src/app/services/login.service';
import { Usuario } from '../models/usuario';

@Component({
  selector: 'app-consulta-insumos',
  templateUrl: './consulta-insumos.component.html',
  styleUrls: ['./consulta-insumos.component.css']
})
export class ConsultaInsumosComponent implements OnInit {
insumos: Insumo[];
searchText: string;
usuario: Usuario;

  name = 'Angular';
  page = 1;
  pageSize =5;
  constructor(private insumoService: InsumoService, private modalService: NgbModal,private router: Router,private loginService:LoginService) {
      if(loginService.currentUserValue.tipo == 'Docente'){
        this.router.navigate(['/']);
      }
   }

  ngOnInit(): void {
    this.insumos = [];
    this.get();
    this.usuario = this.loginService.currentUserValue;
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
