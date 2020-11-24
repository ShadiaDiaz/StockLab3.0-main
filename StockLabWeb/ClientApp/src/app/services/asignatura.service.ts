import { HttpClient } from '@angular/common/http';
import { Inject, Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { catchError, tap } from 'rxjs/operators';
import { HandleHttpErrorService } from '../@base/handle-http-error.service';
import { Asignatura } from '../stocklab/models/asignatura';

@Injectable({
  providedIn: 'root'
})
export class AsignaturaService {
  baseUrl: string;
  
  constructor(
    private http: HttpClient,
    @Inject('BASE_URL') baseUrl: string,
    private handleErrorService: HandleHttpErrorService
  ) { this.baseUrl = baseUrl; }

  post(asignatura: Asignatura): Observable<Asignatura> {
    
    return this.http.post<Asignatura>(this.baseUrl + 'api/Asignaturas', asignatura).pipe(
      tap(_ => this.handleErrorService.log('datos enviados')),
      catchError(this.handleErrorService.handleError<Asignatura>('Registrar Asignatura', null))
    );
  }

  get(): Observable<Asignatura[]> {
    return this.http.get<Asignatura[]>(this.baseUrl + 'api/Asignaturas').pipe(
      tap(_ => this.handleErrorService.log('Datos')),
      catchError(this.handleErrorService.handleError<Asignatura[]>('Consulta Asignaturas', null))
    );
  }
}
