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
  constructor(private modalService: NgbModal,private loginService: LoginService, private router: Router, private chatService: ChatService) 
  {
    if(this.loginService.currentUserValue.tipo=="Administrador"){
      this.router.navigate(['/']);
    }
  }

  ngOnInit(): void {
    this.mensajes = [];
    this.get();
    this.actualizarListaSignal();
  }

  private actualizarListaSignal(){
    var usuario = this.loginService.currentUserValue;
    this.chatService.signalRecived.subscribe((chat: Chat) => {
      if(chat.idPersona == usuario.idPersona){
        this.mensajes.push(chat);
      }
    });
  }

  get(){
    var usuario = this.loginService.currentUserValue;
    this.chatService.get().subscribe(result => {
      result.forEach(element =>{
        if(element.idPersona == usuario.idPersona){
          this.mensajes.push(element);
        }
      });
    });
  }

  sendMensaje(){
    var usuario = this.loginService.currentUserValue;
    var mensaje = this.mensaje.trim();
    if(mensaje == ""){
        const messageBox = this.modalService.open(ModalComponent)
        messageBox.componentInstance.title = "Resultado Operación";
        messageBox.componentInstance.cuerpo = 'No se puede enviar un mensaje Vacio. !!! :-)';
    }
    else{
        var chat = new Chat();
        chat.admin = "no";
        chat.idPersona = usuario.idPersona;
        chat.mensaje = mensaje;
        this.chatService.post(chat).subscribe(result => {
          if(result != null){
            const messageBox = this.modalService.open(ModalComponent)
            messageBox.componentInstance.title = "Resultado Operación";
            messageBox.componentInstance.cuerpo = 'Mensaje Enviado. !!! :-)';
            this.mensaje = "";
          }
        });
    }
  }

}
