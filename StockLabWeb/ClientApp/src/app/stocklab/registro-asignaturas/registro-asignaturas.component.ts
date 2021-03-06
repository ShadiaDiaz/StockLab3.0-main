import { Component, OnInit } from '@angular/core';
import { Asignatura } from '../models/asignatura';
import { FormGroup, FormBuilder, Validators, AbstractControl } from '@angular/forms';
import { AsignaturaService } from 'src/app/services/asignatura.service';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { ModalComponent } from 'src/app/@base/modal/modal.component';
import { Router } from '@angular/router';
import { LoginService } from 'src/app/services/login.service';


@Component({
  selector: 'app-registro-asignaturas',
  templateUrl: './registro-asignaturas.component.html',
  styleUrls: ['./registro-asignaturas.component.css']
})
export class RegistroAsignaturasComponent implements OnInit {

  formGroup: FormGroup;
  asignatura: Asignatura;

  constructor(private formBuilder: FormBuilder, private asignaturaService: AsignaturaService,
    private modalService: NgbModal, private router: Router,private loginService: LoginService) { 
      if(this.loginService.currentUserValue.tipo != 'Administrador'){
        this.router.navigate(['/']);
      }
    }

  ngOnInit(): void {
    this.buildForm();
  }

  private buildForm(...args: []) {
    this.asignatura = new Asignatura();
    this.asignatura.codigo = '';
    this.asignatura.nombre = '';
    this.asignatura.horario = '';



    this.formGroup = this.formBuilder.group({
      codigo: [this.asignatura.codigo, [Validators.required, Validators.maxLength(5)]],
      nombre: [this.asignatura.nombre, [Validators.required, Validators.maxLength(25)]],
      horario: [this.asignatura.horario, [Validators.required, Validators.maxLength(30)]],
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
    this.asignatura = this.formGroup.value;
    this.asignaturaService.post(this.asignatura).subscribe(p=>{
      if(p != null){
        const messageBox = this.modalService.open(ModalComponent)​
        messageBox.componentInstance.title = "Resultado Operación";​
        messageBox.componentInstance.cuerpo = 'Asignatura creada!!! :-)';
        this.asignatura = p;
      }
    });
  }
}