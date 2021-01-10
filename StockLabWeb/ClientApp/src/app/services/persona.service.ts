import { HttpClient } from '@angular/common/http';
import { Inject, Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { catchError, tap } from 'rxjs/operators';
import { HandleHttpErrorService } from '../@base/handle-http-error.service';
import { Persona } from '../stocklab/models/persona';

@Injectable({
  providedIn: 'root'
})
export class PersonaService {
  baseUrl: string;
  
  constructor(
    private http: HttpClient,
    @Inject('BASE_URL') baseUrl: string,
    private handleErrorService: HandleHttpErrorService
  ) { this.baseUrl = baseUrl; }

  post(persona: Persona): Observable<Persona> {
    
    return this.http.post<Persona>(this.baseUrl + 'api/Persona', persona).pipe(
      tap(_ => this.handleErrorService.log('datos enviados')),
      catchError(this.handleErrorService.handleError<Persona>('Registrar Persona', null))
    );
  }

  get(identificacion: string): Observable<Persona> {
    return this.http.get<Persona>(this.baseUrl + 'api/Persona/'+identificacion).pipe(
      tap(_ => this.handleErrorService.log('Datos')),
      catchError(this.handleErrorService.handleError<Persona>('Consulta Persona', null))
    );
  }

  getMonitores(): Observable<Persona[]> {
    return this.http.get<Persona[]>(this.baseUrl + 'api/Persona').pipe(
      tap(_ => this.handleErrorService.log('Datos')),
      catchError(this.handleErrorService.handleError<Persona[]>('Consultar Monitores', null))
    );
  }

  getPersonas(): Observable<Persona[]> {
    return this.http.get<Persona[]>(this.baseUrl + 'api/PersonaConsulta').pipe(
      tap(_ => this.handleErrorService.log('Datos')),
      catchError(this.handleErrorService.handleError<Persona[]>('Consultar Personas', null))
    );
  }
}
