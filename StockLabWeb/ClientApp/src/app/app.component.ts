import {Component, OnInit, ViewChild} from '@angular/core';
import { Usuario } from './stocklab/models/usuario';
import { LoginService } from './services/login.service';
import { PrimeNGConfig } from 'primeng/api';
import { MenuItem } from 'primeng/api';
import {BreakpointObserver} from '@angular/cdk/layout';
import {MatSidenav} from '@angular/material/sidenav';


@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['app.component.css'],
})
export class AppComponent implements OnInit {
  usuario: Usuario;
  logg = false;
  title = 'app';
  visibleSidebar1 = false;
  items: MenuItem[] = [];
  itemsMenu: MenuItem[] = [];
  subItems: MenuItem[] = [];
  item: MenuItem;
  panelOpenState = false;
  constructor(private loginservice: LoginService, private primengConfig: PrimeNGConfig, private observer: BreakpointObserver) {
    loginservice.currentUser.subscribe(x => this.usuario = x);
    this.logg = !!this.usuario;
  }

  ngOnInit() {
    this.primengConfig.ripple = true;
    this.llenarMenu();
  }

  llenarMenu() {

    if (this.usuario) {
      this.loginservice.getMenu(this.usuario.idRole).subscribe( value => {
        // tslint:disable-next-line:triple-equals
        if (value != undefined) {
          for (let i = 0; i < value.length; i++) {
            this.subItems = [];
            for (let j = 0; j < value[i].programas.length; j++) {
              this.item = {
                label: value[i].programas[j].nombre,
                routerLink: value[i].programas[j].ruta
              };
              this.subItems.push(this.item);
            }
            this.item = {
              label: value[i].nombre,
              items: this.subItems
            };
            this.items.push(this.item);
          }
        }
      });
      this.itemsMenu = this.items;
    }
  }

  procesaPropagar(event: any) {
    this.visibleSidebar1 = event;
  }

  Logout() {
    sessionStorage.removeItem('login');
    window.location.reload();
  }
}

