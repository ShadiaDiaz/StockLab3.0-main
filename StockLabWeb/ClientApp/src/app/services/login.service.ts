import { HttpClient } from '@angular/common/http';
import { Inject, Injectable } from '@angular/core';
import { BehaviorSubject, Observable } from 'rxjs';
import { Usuario } from '../stocklab/models/usuario';
import { HandleHttpErrorService } from '../@base/handle-http-error.service';
import { catchError, map, tap } from 'rxjs/operators';
import {Menu} from '../stocklab/models/menu';


@Injectable({
  providedIn: 'root'
})
export class LoginService {
  private currentUserSubject: BehaviorSubject<Usuario>;
  public currentUser: Observable<Usuario>;
  Url: string;
  usuario: Usuario;


  constructor(private http: HttpClient, @Inject('BASE_URL') baseurl: string,
    private handleErrorService: HandleHttpErrorService) {
    this.currentUserSubject = new BehaviorSubject<Usuario>(JSON.parse(sessionStorage.getItem('login')));
    this.currentUser = this.currentUserSubject.asObservable();
    this.Url = baseurl;
  }

  login(password: string, usuario: string) {
    return this.http.post<any>(`${this.Url}api/login`, { usuario, password})
    .pipe(
      catchError(this.handleErrorService.handleError<Usuario>('Inicio Sesion', null)),
      map(user => {
      sessionStorage.setItem('login', JSON.stringify(user));
      return user;
    }));
  }

  getMenu(idRole: number) {
    return this.http.get<Menu[]>(`${this.Url}api/Menu/${idRole}`)
      .pipe(
        tap(_ => this.handleErrorService.log('datos enviados')),
        catchError(this.handleErrorService.handleError<Menu[]>('Consultar Menu', null))
      );
  }
  public get currentUserValue(): Usuario {
    return this.currentUserSubject.value;
  }

}
