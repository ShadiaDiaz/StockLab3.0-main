import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { ModalComponent } from '../@base/modal/modal.component';
import { ChatService } from '../services/chat.service';
import { LoginService } from '../services/login.service';
import { Chat } from '../stocklab/models/chat';

@Component({
  selector: 'app-chat-cliente',
  templateUrl: './chat-cliente.component.html',
  styleUrls: ['./chat-cliente.component.css']
})
export class ChatClienteComponent implements OnInit {
  mensajes: Chat[];
  mensaje: string;
  // tslint:disable-next-line:max-line-length
  constructor(private modalService: NgbModal, private loginService: LoginService, private router: Router, private chatService: ChatService) {
    /* if(this.loginService.currentUserValue.tipo=="Administrador"){
      this.router.navigate(['/']);
    } */
  }

  ngOnInit(): void {
    this.mensajes = [];
    this.get();
    this.actualizarListaSignal();
  }

  private actualizarListaSignal() {
    const usuario = this.loginService.currentUserValue;
    this.chatService.signalRecived.subscribe((chat: Chat) => {
      if (chat.idPersona === usuario.idPersona) {
        this.mensajes.push(chat);
      }
    });
  }

  get() {
    const usuario = this.loginService.currentUserValue;
    this.chatService.get().subscribe(result => {
      result.forEach(element => {
        if (element.idPersona === usuario.idPersona) {
          this.mensajes.push(element);
        }
      });
    });
  }

  sendMensaje() {
    const usuario = this.loginService.currentUserValue;
    const mensaje = this.mensaje.trim();
    if (mensaje === '') {
        const messageBox = this.modalService.open(ModalComponent);
        messageBox.componentInstance.title = 'Resultado Operación';
        messageBox.componentInstance.cuerpo = 'No se puede enviar un mensaje Vacio. !!! :-)';
    } else {
        const chat = new Chat();
        chat.admin = 'no';
        chat.idPersona = usuario.idPersona;
        chat.mensaje = mensaje;
        this.chatService.post(chat).subscribe(result => {
          if (result != null) {
            const messageBox = this.modalService.open(ModalComponent);
            messageBox.componentInstance.title = 'Resultado Operación';
            messageBox.componentInstance.cuerpo = 'Mensaje Enviado. !!! :-)';
            this.mensaje = '';
          }
        });
    }
  }

}
