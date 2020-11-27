import { Component, OnInit } from '@angular/core';
import { Usuario } from '../stocklab/models/usuario';

@Component({
  selector: 'app-perfil',
  templateUrl: './perfil.component.html',
  styleUrls: ['./perfil.component.css']
})
export class PerfilComponent implements OnInit {

  usuario: Usuario;
  constructor() { }

  ngOnInit(): void {
    this.usuario = new Usuario;
    this.mapUsuario();
  }

  mapUsuario(){
    var lista = JSON.parse(sessionStorage.getItem('login'));
    if(lista != null){
      this.usuario = lista;
    }
  }
}
