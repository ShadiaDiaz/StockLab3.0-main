import { Injectable } from '@angular/core';
import { NgModel } from '@angular/forms';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { Observable, of } from 'rxjs';
import { ModalComponent } from './modal/modal.component';

@Injectable({
  providedIn: 'root'
})
export class HandleHttpErrorService {

  constructor(private modalService: NgbModal) { }

  public handleError<T>(operation = 'operation', result?: T) {
    return (error: any): Observable<T> => {
      console.error(error);
      if (error.status == "400") {
        this.mostrarEstado400(error);
      }
      if(error.status == "401"){
        this.mostrarEstado400(error);
      }
      return of(result as T);
    };
  }

  public log(message: string) {
    console.log(message);
  }

  mostrarEstado400(error: any): void {
    console.error(error);
    let contadorValidaciones: number = 0;
    let mensajeValidaciones: string =
      `Señor(a) usuario(a), se han presentado algunos errores de validación, por favor revíselos y vuelva a realizar la operación.<br/><br/>`;
    for (const prop in error.error.errors) {
      contadorValidaciones++;
      mensajeValidaciones += `<strong>${contadorValidaciones}. ${prop}:</strong>`;

      error.error.errors[prop].forEach(element => {
        mensajeValidaciones += `<br/> - ${element}`;
      });

      mensajeValidaciones += `<br/>`;
    }
    const modalRef = this.modalService.open(ModalComponent)
    modalRef.componentInstance.title = 'Ha ocurrido un error';
    modalRef.componentInstance.cuerpo = mensajeValidaciones;
  }

}
