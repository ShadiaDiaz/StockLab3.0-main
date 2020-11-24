import { HttpClient } from '@angular/common/http';
import { Inject, Injectable } from '@angular/core';
import { BehaviorSubject, Observable } from 'rxjs';
import { Usuario } from './../stocklab/models/usuario';
import { HandleHttpErrorService } from './../@base/handle-http-error.service';
import { Route } from '@angular/compiler/src/core';
import { Router } from '@angular/router';
import { catchError, map, tap } from 'rxjs/operators';


@Injectable({
  providedIn: 'root'
})
export class LoginService {
  private currentUserSubject: BehaviorSubject<Usuario>;
  public currentUser: Observable<Usuario>;
  Url: string;
  usuario: Usuario;


  constructor(private http: HttpClient, @Inject('BASE_URL') baseurl: string,
    private handleErrorService: HandleHttpErrorService, private route: Router) {
    this.currentUserSubject = new BehaviorSubject<Usuario>(JSON.parse(sessionStorage.getItem('login')));
    this.currentUser = this.currentUserSubject.asObservable();
    this.Url = baseurl;
  }

  login(password: string, usuario: string) {
    return this.http.post<any>(`${this.Url}api/login`,{usuario,password})
    .pipe(
      catchError(this.handleErrorService.handleError<Usuario>('Inicio Sesion', null)),
      map(user => {
      sessionStorage.setItem('login',JSON.stringify(user));
      return user;
      
    }));
  }
  

  public get currentUserValue(): Usuario {
    return this.currentUserSubject.value;
  }

}
