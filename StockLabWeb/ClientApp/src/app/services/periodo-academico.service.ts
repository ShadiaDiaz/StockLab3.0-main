import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Inject, Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { catchError, tap } from 'rxjs/operators';
import { HandleHttpErrorService } from '../@base/handle-http-error.service';
import { PeriodoAcademico } from '../stocklab/models/periodo-academico';

@Injectable({
  providedIn: 'root'
})
export class PeriodoAcademicoService {

  baseUrl: string;

  constructor(
    private http: HttpClient,
    @Inject('BASE_URL') baseUrl: string,
    private handleErrorService: HandleHttpErrorService
  ) { this.baseUrl = baseUrl; }

  post(periodo: PeriodoAcademico): Observable<PeriodoAcademico> {
    return this.http.post<PeriodoAcademico>(this.baseUrl + 'api/PeriodoAcademico', periodo).pipe(
      tap(_ => this.handleErrorService.log('datos enviados')),
      catchError(this.handleErrorService.handleError<PeriodoAcademico>('Registrar Periodo', null))
    );
  }
}
