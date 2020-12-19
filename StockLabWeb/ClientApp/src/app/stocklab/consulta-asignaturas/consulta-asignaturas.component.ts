import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { AsignaturaService } from 'src/app/services/asignatura.service';
import { LoginService } from 'src/app/services/login.service';
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
  constructor(private asignaturaService: AsignaturaService, private router: Router, private loginService: LoginService) {
    if(this.loginService.currentUserValue.tipo != 'Administrador'){
      this.router.navigate(['/']);
    }
   }

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
