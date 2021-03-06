import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { ModalComponent } from '../@base/modal/modal.component';
import { ChatService } from '../services/chat.service';
import { LoginService } from '../services/login.service';
import { PersonaService } from '../services/persona.service';
import { Chat } from '../stocklab/models/chat';
import { Persona } from '../stocklab/models/persona';

@Component({
  selector: 'app-chat',
  templateUrl: './chat.component.html',
  styleUrls: ['./chat.component.css']
})
export class ChatComponent implements OnInit {
  mensajes: Chat[];
  personas: Persona[];
  mensajePersona: Chat[];
  mensaje: string;
  persona: Persona;
  constructor(private router: Router, private chatService: ChatService, private personaService: PersonaService, private modalService: NgbModal, private loginService: LoginService) {
    if (loginService.currentUserValue.tipo != 'Administrador') {
      this.router.navigate(['/chatUsuarios']);
    }
  }

  ngOnInit(): void {
    this.mensajes = [];
    this.personas = [];
    this.mensajePersona = [];
    console.log('a');
    this.get();
    this.mensaje = "";
    this.actualizarListaSignal();
  }

  private actualizarListaSignal() {
    this.chatService.signalRecived.subscribe((chat: Chat) => {
      this.mensajes.push(chat);
      if (this.persona != undefined) {
        if (this.persona.identificacion == chat.idPersona) {
          this.getMensajes(chat.idPersona);

          var index = this.personas.findIndex(p => p.identificacion == chat.idPersona);
          this.personas[index].mensaje = chat;
        }
      }
    });
  }

  get() {
    this.personaService.getPersonas().subscribe(result => {
      this.personas = result;
    });
    this.chatService.get().subscribe(resultt => {
      if (resultt != null) {
        this.mensajes = resultt;
        for (let index = 0; index < this.personas.length; index++) {
          var result = resultt.filter(m => m.idPersona == this.personas[index].identificacion);

          if (result.length>0) {
            this.personas[index].mensaje = result[result.length - 1];
          }
          else {
            this.personas[index].mensaje = new Chat();
          }
        }
      }
    });

  }

  sendMensaje() {
    var mensaje = this.mensaje.trim();
    if (mensaje == "") {
      const messageBox = this.modalService.open(ModalComponent)
      messageBox.componentInstance.title = "Resultado Operación";
      messageBox.componentInstance.cuerpo = 'No se puede enviar un mensaje Vacio. !!! :-)';
    }
    else {
      if (this.persona != undefined) {
        var chat = new Chat();
        chat.admin = "si";
        chat.idPersona = this.persona.identificacion;
        chat.mensaje = mensaje;
        this.chatService.post(chat).subscribe(result => {
          if (result != null) {
            const messageBox = this.modalService.open(ModalComponent)
            messageBox.componentInstance.title = "Resultado Operación";
            messageBox.componentInstance.cuerpo = 'Mensaje Enviado. !!! :-)';
            this.mensaje = "";
          }
        });
      }
      else {
        const messageBox = this.modalService.open(ModalComponent)
        messageBox.componentInstance.title = "Resultado Operación";
        messageBox.componentInstance.cuerpo = 'Seleccionar el chat. !!! :-)';
      }
    }
  }

  getMensajes(codigo: string) {
    this.mensajePersona = [];
    this.personaService.get(codigo).subscribe(result =>{
      if(result != null){
        this.persona = result;
      }
      else{
        this.persona = new Persona();
      }
    });
    
    
    this.mensajes.forEach(element => {
      if (element.idPersona == codigo) {
        this.mensajePersona.push(element);
        this.persona = element.persona;
      }
    });
  }

}
