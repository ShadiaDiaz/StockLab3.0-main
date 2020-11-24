import { Component } from '@angular/core';
import { Usuario } from './stocklab/models/usuario';
import { LoginService } from './services/login.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html'
})
export class AppComponent {
  usuario: Usuario;
  logg: boolean = false;
  title = 'app';
  constructor(private loginservice: LoginService){
    loginservice.currentUser.subscribe(x => this.usuario = x);

    if(this.usuario){
      this.logg = true;
    }
    else{
      this.logg = false;
    }
  }
}

