import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators, AbstractControl } from '@angular/forms';
import { Persona } from '../models/persona';
import { Asignatura } from '../models/asignatura';
import { AsignaturaService } from 'src/app/services/asignatura.service';
import { Usuario } from '../models/usuario';
import { PersonaService } from 'src/app/services/persona.service';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { ModalComponent } from 'src/app/@base/modal/modal.component';
import { Router } from '@angular/router';
import { LoginService } from 'src/app/services/login.service';
@Component({
  selector: 'app-registro-docentes',
  templateUrl: './registro-docentes.component.html',
  styleUrls: ['./registro-docentes.component.css']
})
export class RegistroDocentesComponent implements OnInit {

  formGroup: FormGroup;
  docente: Persona;
  usuario: Usuario;

  constructor(private formBuilder: FormBuilder,
    private personService: PersonaService, private modalService: NgbModal, private router: Router, private loginService: LoginService) {
        if(this.loginService.currentUserValue.tipo != 'Administrador'){
          this.router.navigate(['/']);
        }
     }

  ngOnInit(): void {
    this.buildForm();
  }

  private buildForm(...args: []) {
    this.docente = new Persona();
    this.usuario = new Usuario();
    this.docente.identificacion = '';
    this.docente.nombre = '';
    this.docente.apellidos = '';
    this.docente.sexo = '';
    this.docente.correo = '';
    this.usuario.password = '';
    this.usuario.tipo = '';



    this.formGroup = this.formBuilder.group({
      identificacion: [this.docente.identificacion, [Validators.required, Validators.maxLength(13)]],
      nombre: [this.docente.nombre, [Validators.required, Validators.maxLength(25)]],
      apellidos: [this.docente.apellidos, [Validators.required, Validators.maxLength(25)]],
      sexo: [this.docente.sexo, [Validators.required, this.ValidaSexo, Validators.maxLength(11)]],
      edad: [this.docente.edad, [Validators.required, this.ValidaEdad]],
      tipo: [this.usuario.tipo, [Validators.required]],
      correo: [this.docente.correo, [Validators.required,Validators.maxLength(30), Validators.pattern("[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{1,5}")]],
      password: [this.usuario.password, [Validators.required, Validators.pattern("(?=.*[-!#$%&/()?¡_])(?=.*[A-Z])(?=.*[a-z]).{8,}")]]
    });
  }



  private ValidaSexo(control: AbstractControl) {
    const sexo = control.value;
    if (sexo.toLocaleUpperCase() !== 'MASCULINO' && sexo.toLocaleUpperCase() !== 'FEMENINO') {
      return { validSexo: true, messageSexo: 'Sexo No Valido' };
    }
    return null;
  }

  private ValidaEdad(control: AbstractControl){
    const edad = control.value;
    if(edad < 0 || edad > 100){
      return {validEdad: true, messageEdad: 'Edad no valida'};
    }
    return null;
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
    this.mapear();
    this.personService.post(this.docente).subscribe(result => {
      if (result != null) {
        const messageBox = this.modalService.open(ModalComponent)
        messageBox.componentInstance.title = "Resultado Operación";
        messageBox.componentInstance.cuerpo = this.usuario.tipo + ' creado!!! :-)';
        this.docente = result;
      }
    });
  }


  mapear() {
    this.usuario.usuario = this.formGroup.value.correo;
    this.usuario.password = this.formGroup.value.password;
    this.docente = this.formGroup.value;
    this.usuario.nombre = this.docente.nombre;
    this.usuario.nombre = this.formGroup.value.nombre;
    this.usuario.idPersona = this.docente.identificacion;
    this.usuario.estado = "Activo";
    this.usuario.apellidos = this.docente.apellidos;
    this.usuario.tipo = this.formGroup.value.tipo;
    this.docente.usuario = this.usuario;
  }

}