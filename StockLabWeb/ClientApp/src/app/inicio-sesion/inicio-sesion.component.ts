import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { first } from 'rxjs/operators';
import { LoginService } from './../services/login.service';
import { Usuario } from './../stocklab/models/usuario';
import { ModalComponent } from 'src/app/@base/modal/modal.component';

@Component({
  selector: 'app-inicio-sesion',
  templateUrl: './inicio-sesion.component.html',
  styleUrls: ['./inicio-sesion.component.css']
})
export class InicioSesionComponent implements OnInit {
  usuario: Usuario;
  loading = false;
  submitted = false;
  returnUrl: string;

  constructor(private loginService: LoginService, private route: ActivatedRoute,
    private router: Router, private modalService: NgbModal) {
    if (this.loginService.currentUserValue) {
      this.router.navigate(['/']);
    }
  }

  ngOnInit(): void {
    this.usuario = new Usuario;
    this.usuario.tipo = '';
    this.returnUrl = this.route.snapshot.queryParams['returnUrl'] || '/';
  }

  login() {
    this.loading = true;
    this.loginService.login(this.usuario.password, this.usuario.usuario)
      .pipe(first())
      .subscribe(
      data => {
        this.loading = false;
        window.location.reload();
      },
      error => {
          const messageBox = this.modalService.open(ModalComponent)
          messageBox.componentInstance.title = "Resultado Operación";
          messageBox.componentInstance.cuerpo = 'Usuario o Contraseña incorrecta !!! :-)';
        console.log(error.error);
      });
      
  }
}
