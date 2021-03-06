import { Injectable } from '@angular/core';
import { CanActivate, ActivatedRouteSnapshot, RouterStateSnapshot, UrlTree, Router } from '@angular/router';
import { Observable } from 'rxjs';
import { Usuario } from 'src/app/stocklab/models/usuario';
import { LoginService } from '../login.service';

@Injectable({
  providedIn: 'root'
})
export class AuthGuard implements CanActivate {
  constructor(private router: Router,
    private authenticationService: LoginService
  ) { }
  usuario: Usuario = (JSON.parse(sessionStorage.getItem('login')));
  canActivate(route: ActivatedRouteSnapshot, state: RouterStateSnapshot) {
    const currentUser = this.authenticationService.currentUserValue;
    if (this.usuario.tipo == "Invitado") {
      sessionStorage.removeItem('login');
      alert("Acceso denegado")
      window.location.reload();
      return false;
    }
    else if (this.usuario.tipo = "Administrador") {
      return true;
    }
    else {
      this.router.navigate(['/InicioSesion'])
    }
    return false;
  }
}
