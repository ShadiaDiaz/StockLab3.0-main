import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { ModalComponent } from 'src/app/@base/modal/modal.component';
import { PeriodoAcademicoService } from 'src/app/services/periodo-academico.service';
import { PeriodoAcademico } from '../models/periodo-academico';

@Component({
  selector: 'app-periodo-registro',
  templateUrl: './periodo-registro.component.html',
  styleUrls: ['./periodo-registro.component.css']
})
export class PeriodoRegistroComponent implements OnInit {

  formGroup: FormGroup;
  periodo: PeriodoAcademico;

  constructor(private formBuilder: FormBuilder, private periodoService: PeriodoAcademicoService,
    private modalService: NgbModal) {

  }

  ngOnInit(): void {
    this.periodo = new PeriodoAcademico;
    this.buildForm();
  }

  private buildForm() {
    this.periodo = new PeriodoAcademico;
    this.periodo.periodo = '';
    this.periodo.corte = '';

    this.formGroup = this.formBuilder.group({
      periodo: [this.periodo.periodo, [Validators.required]],
      corte: [this.periodo.corte, [Validators.required]]
    });
  }

  get control() {
    return this.formGroup.controls;
  }
  onSubmit() {
    if (this.formGroup.invalid) {
      return;
    }
    this.agregar();
  }

  agregar() {
    this.periodo = this.formGroup.value;
    this.periodoService.post(this.periodo).subscribe(result => {
      if (result != null) {
        const messageBox = this.modalService.open(ModalComponent);
        messageBox.componentInstance.title = 'Resultado Operación';
        messageBox.componentInstance.cuerpo = 'Periodo Creado!!! :-)';
        this.periodo = result;
      }
    });
  }

}
