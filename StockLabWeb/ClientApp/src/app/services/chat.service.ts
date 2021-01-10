import { HttpClient } from '@angular/common/http';
import { EventEmitter, Inject, Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { catchError, tap } from 'rxjs/operators';
import { HandleHttpErrorService } from '../@base/handle-http-error.service';
import { Chat } from '../stocklab/models/chat';
import * as singnalR from '@aspnet/signalr';

@Injectable({
  providedIn: 'root'
})
export class ChatService {
  baseUrl: string;
  private hubConnection: singnalR.HubConnection;
  signalRecived = new EventEmitter<Chat>();
  constructor(
    private http: HttpClient,
    @Inject('BASE_URL') baseUrl: string,
    private handleErrorService: HandleHttpErrorService
  ) { this.baseUrl = baseUrl; this.buildConnection();  this.startConnection(); }


  private buildConnection = () => {
    this.hubConnection = new singnalR.HubConnectionBuilder()
    .withUrl(this.baseUrl + "signalHub")
    .build();
  }
  private startConnection = () => {
    this.hubConnection
    .start()
    .then(() => {
      console.log("Iniciando signal");
      this.registerSignalEvents();
    })
    .catch(err => {
      console.log("Error en el signal" + err);
      setTimeout(function() {
        this.startConnection();
      }, 3000);
    });
  }
  private registerSignalEvents(){
    this.hubConnection.on("chatRegistrada", (data: Chat) => {
      this.signalRecived.emit(data);
    });
  }

  post(chat: Chat): Observable<Chat> {
    return this.http.post<Chat>(this.baseUrl + 'api/Chat', chat).pipe(
      tap(_ => this.handleErrorService.log('datos enviados')),
      catchError(this.handleErrorService.handleError<Chat>('Registrar Chat', null))
    );
  }

  get(): Observable<Chat[]> {
    return this.http.get<Chat[]>(this.baseUrl + 'api/Chat').pipe(
      tap(_ => this.handleErrorService.log('Datos')),
      catchError(this.handleErrorService.handleError<Chat[]>('Consulta Chat', null))
    );
  }
}
