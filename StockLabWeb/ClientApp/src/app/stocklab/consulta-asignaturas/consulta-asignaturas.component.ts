import { Component, OnInit } from '@angular/core';
import { AsignaturaService } from 'src/app/services/asignatura.service';
import { Asignatura } from '../models/asignatura';

@Component({
  selector: 'app-consulta-asignaturas',
  templateUrl: './consulta-asignaturas.component.html',
  styleUrls: ['./consulta-asignaturas.component.css']
})
export class ConsultaAsignaturasComponent implements OnInit {
  asignaturas: Asignatura[];
  searchText: string;
  name = 'Angular';
  page = 1;
  pageSize =5;
  constructor(private asignaturaService: AsignaturaService) { }

  ngOnInit(): void {
    this.asignaturas = [];
    this.get();
  }

  get()
  {
    this.asignaturaService.get().subscribe(result => {
      this.asignaturas = result;
    })
  }

}
