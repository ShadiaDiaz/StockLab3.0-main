import { Component, OnInit } from '@angular/core';
import { Usuario } from '../stocklab/models/usuario';
declare const $: any;
declare interface RouteInfo {
    path: string;
    title: string;
    icon: string;
    class: string;
}
export const ROUTES: RouteInfo[] = [
    { path: '/dashboard', title: 'Dashboard',  icon: 'dashboard', class: '' },
    { path: '/user-profile', title: 'User Profile',  icon:'person', class: '' },
    { path: '/table-list', title: 'Table List',  icon:'content_paste', class: '' },
    { path: '/typography', title: 'Typography',  icon:'library_books', class: '' },
    { path: '/icons', title: 'Icons',  icon:'bubble_chart', class: '' },
    { path: '/maps', title: 'Maps',  icon:'location_on', class: '' },
    { path: '/notifications', title: 'Notifications',  icon:'notifications', class: '' },
    { path: '/upgrade', title: 'Upgrade to PRO',  icon:'unarchive', class: 'active-pro' },
];

@Component({
  selector: 'app-sidebar',
  templateUrl: './sidebar.component.html',
  styleUrls: ['./sidebar.component.css']
})
export class SidebarComponent implements OnInit {

  usuario: Usuario;
  menuItems: any[];
  constructor() { }

  ngOnInit(): void {
    this.usuario = new Usuario;
    this.mapUsuario();
    this.menuItems = ROUTES.filter(menuItem => menuItem);
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

  isMobileMenu() {
    if ($(window).width() > 991) {
        return false;
    }
    return true;
};

}
