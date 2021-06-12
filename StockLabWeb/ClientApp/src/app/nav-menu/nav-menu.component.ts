import { Component, EventEmitter, Output } from '@angular/core';

@Component({
  selector: 'app-nav-menu',
  templateUrl: './nav-menu.component.html',
  styleUrls: ['./nav-menu.component.css']
})
export class NavMenuComponent {
  isExpanded = false;
  @Output()
  sideBar = new EventEmitter<boolean>() ;

  collapse() {
    this.isExpanded = false;
  }

  toggle() {
    this.isExpanded = !this.isExpanded;
  }

  Logout() {
    sessionStorage.removeItem('login');
    window.location.reload();
  }

  propagar() {
    this.sideBar.emit(true);
  }
}
