import { Component, OnInit } from '@angular/core';
import { Usuario } from '../stocklab/models/usuario';

@Component({
  selector: 'app-sidebar',
  templateUrl: './sidebar.component.html',
  styleUrls: ['./sidebar.component.css']
})
export class SidebarComponent implements OnInit {

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
  Logout(){
    sessionStorage.removeItem('login');
    window.location.reload();
  }

}
