import { Component, OnInit } from '@angular/core';
import { InsumoService } from 'src/app/services/insumo.service';
import { Insumo } from '../models/insumo';

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
  constructor(private insumoService: InsumoService ) { }

  ngOnInit(): void {
    this.insumos = [];
    this.get();
  }

  get()
  {
    this.insumoService.get().subscribe(result =>{
      this.insumos = result;
    })
  }



}
