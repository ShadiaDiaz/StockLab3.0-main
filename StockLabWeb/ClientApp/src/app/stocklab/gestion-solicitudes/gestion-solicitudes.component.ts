import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators, AbstractControl } from '@angular/forms';
import { NgbDate, NgbModal, NgbTimeStruct } from '@ng-bootstrap/ng-bootstrap';
import { ModalComponent } from 'src/app/@base/modal/modal.component';
import { AsignaturaService } from 'src/app/services/asignatura.service';
import { InsumoService } from 'src/app/services/insumo.service';
import { PersonaService } from 'src/app/services/persona.service';
import { SolicitudService } from 'src/app/services/solicitud.service';
import { Asignatura } from '../models/asignatura';
import { DetalleInsumo } from '../models/detalle-insumo';
import { Insumo } from '../models/insumo';
import { Persona } from '../models/persona';
import { Solicitud } from '../models/solicitud';
import { NgbDateStruct } from '@ng-bootstrap/ng-bootstrap';
import { Usuario } from '../models/usuario';
import { Time } from '@angular/common';
import { NgbTimeAdapter, NgbTimeStructAdapter } from '@ng-bootstrap/ng-bootstrap/timepicker/ngb-time-adapter';
import { Router } from '@angular/router';
import { LoginService } from 'src/app/services/login.service';

@Component({
  selector: 'app-gestion-solicitudes',
  templateUrl: './gestion-solicitudes.component.html',
  styleUrls: ['./gestion-solicitudes.component.css']
})
export class GestionSolicitudesComponent implements OnInit {

  constructor(private formBuilder: FormBuilder, private personaService: PersonaService,
    private modalService: NgbModal, private asignaturaService: AsignaturaService,
    private insumoService: InsumoService, private solicitudService: SolicitudService,
    private router:Router, private loginService: LoginService) {
      if(this.loginService.currentUserValue.tipo == 'Monitor' || this.loginService.currentUserValue.tipo == 'Coordinador'){
        this.router.navigate(['/']);
      }
     }
  solicitud: Solicitud;
  formGroup: FormGroup;
  persona: Persona;
  asignatura: Asignatura;
  asignaturas: Asignatura[];

  monitor: Persona;
  monitores: Persona[];

  detalle: DetalleInsumo;
  detalles: DetalleInsumo[];
  usuario: Usuario;
  fecha: Date;
  fecha2: string;
  time2: Time;

  insumo: Insumo;
  insumos: Insumo[];

  time: NgbTimeStruct;

  valid: boolean;

  IdPersona: string;

  model: NgbDateStruct;

  ngOnInit(): void {
    this.usuario = new Usuario;
    this.usuario.tipo = '';
    this.asignaturas = [];
    this.llenarasignaturas();
    this.llenarinsumos();
    this.llenarUsuario();
    this.llenarMonitores();
    this.detalles = [];
    this.monitor = new Persona;
    this.monitores = [];
    this.valid = false;
    this.fecha = new Date(Date.now());
    this.model = { year: this.fecha.getFullYear(), month: this.fecha.getMonth() + 1, day: this.fecha.getDay()};
    this.time = { hour: this.fecha.getHours() , minute: this.fecha.getMinutes(), second: 0};
    this.buildForm();
  }

  private buildForm(...args: []) {
    this.solicitud = new Solicitud();
    this.persona = new Persona();
    this.detalle = new DetalleInsumo();
    this.fecha = new Date(Date.now());
    
    
    this.persona.identificacion = '';
    this.persona.nombre = '';
    this.persona.apellidos = '';
    this.detalle.cantidad = 0;
    this.solicitud.detalles = [];
    this.solicitud.fecha = new Date(Date.now()).toDateString();
    this.time = {hour: 0, minute: 0, second: 0};

    


    this.formGroup = this.formBuilder.group({
      fecha: [this.solicitud.fecha, [Validators.required, this.validafecha]],
      hora: [this.time, [Validators.required, Validators.maxLength(20)]],
      asignatura: ["", [Validators.required]],
      monitor: ["", [Validators.required]],
      detalle: ["", [Validators.required]],
      cantidad: [this.detalle.cantidad, [Validators.required, this.validCantidad]],
      cedula: [""]
    });
  }

  llenarasignaturas() {
    this.asignaturaService.get().subscribe(result => {
      this.asignaturas = result;
    });
  }

  llenarinsumos() {
    this.insumoService.get().subscribe(result => {
      this.insumos = result;
    });
  }

  llenarUsuario() {
    var lista = JSON.parse(sessionStorage.getItem('login'));
    if (lista != null) {
      this.usuario = lista;
    }
  }

  llenarMonitores() {
    this.personaService.getMonitores().subscribe(result => {
      this.monitores = result;
    });
    console.log('a');
  }

  agregardetalle() {
    this.detalle = new DetalleInsumo;
    if (this.formGroup.value.detalle == '' || this.formGroup.value.cantidad == '') {
      const messageBox = this.modalService.open(ModalComponent)
      messageBox.componentInstance.title = "Resultado Operación";
      messageBox.componentInstance.cuerpo = 'Error al añadir detalle';
    }
    else {
      
      var fecha = new Date();
      this.detalle.cantidad = this.formGroup.value.cantidad;
      var codinsumo = this.formGroup.value.detalle;
      this.insumo = this.insumos.find(I => I.item == codinsumo);
      if (this.detalle.cantidad > this.insumo.cantidad) {
        const messageBox = this.modalService.open(ModalComponent)
        messageBox.componentInstance.title = "Resultado Operación";
        messageBox.componentInstance.cuerpo = 'Error: la cantidad es mayor a la disponible ';
      }
      else {
        var codigoDetalle = (this.detalles.length + 1).toString();
        this.detalle.agregarDetalle(fecha,this.insumo,codigoDetalle);
        var detallerespuesta = this.detalles.find(d => d.insumo.item == this.insumo.item);
        if (detallerespuesta != null) {
          var numero = this.detalles.findIndex(d => d.insumo.item == this.insumo.item)
          this.detalles[numero].cantidad += this.detalle.cantidad;
          this.detalles[numero].fecha = this.detalle.fecha;
        }
        else {
          this.detalles.push(this.detalle);
          this.solicitud.detalles = this.detalles;
        }
        const messageBox = this.modalService.open(ModalComponent)
        messageBox.componentInstance.title = "Resultado Operación";
        messageBox.componentInstance.cuerpo = 'Se ha añadido el insumo';
      }
    }
  }



  private validCantidad(control: AbstractControl) {
    const cantidad = control.value;
    if (cantidad <= 0) {
      return { validCantidad: true, messageCantidad: 'La cantidad no puede ser menor o igual a 0' };
    }
  }
  private validafecha(control: AbstractControl) {
    const fecha = control.value;
    
    var fechactual = new Date(Date.now());
    var fecha2 = new Date(fecha);
    
    var day_as_milliseconds = 86400000;
    var diff_in_millisenconds = fecha2.getTime() - fechactual.getTime();
    var dias = (Math.round(diff_in_millisenconds / (1000 * 60 * 60 * 24))) + 1;
    if (fecha2 < fechactual) {
      return { validadFecha: true, messageFecha: 'Fecha No Valida' };
    }
    if (dias < 8) {
      return { validadFecha: true, messageFecha: 'Dias menores a 8' };
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
    if (this.detalles.length == 0) {
      const messageBox = this.modalService.open(ModalComponent)
      messageBox.componentInstance.title = "Resultado Operación";
      messageBox.componentInstance.cuerpo = 'Error: No ha agregado ningun detalle';
      return;
    }
    
    if (this.persona.identificacion == "" && this.usuario.tipo == "Administrador") {
      const messageBox = this.modalService.open(ModalComponent)
      messageBox.componentInstance.title = "Resultado Operación";
      messageBox.componentInstance.cuerpo = 'Error: No ha agregado una persona a la solicitud';
      return;
    }

    this.agregar();
  }



  buscarpersona() {
    this.personaService.get(this.formGroup.value.cedula).subscribe(result => {
      if (result != null) {
        this.persona = result;
        const messageBox = this.modalService.open(ModalComponent)
        messageBox.componentInstance.title = "Resultado Operación";
        messageBox.componentInstance.cuerpo = 'Se ha añadido a la solicitud a ' + this.persona.nombre;
      }
      else {
        this.persona = undefined;
      }
    })
  }
  agregar() {
    this.mapear();
    this.solicitudService.post(this.solicitud).subscribe(result => {
      if (result != null) {
        const messageBox = this.modalService.open(ModalComponent)
        messageBox.componentInstance.title = "Resultado Operación";
        messageBox.componentInstance.cuerpo = 'Se ha creado la solicitud';
        this.solicitud = result;
      }
    })
  }

  mapear() {
    var codigoAsignatura = this.formGroup.value.asignatura;
    this.asignatura = this.asignaturas.find(a => a.codigo == codigoAsignatura);
    this.solicitud = this.formGroup.value;

    this.solicitud.estado = "Activo";
    this.solicitud.detalles = this.detalles;
    this.solicitud.asignatura = this.asignatura;
    
    var hora = this.formGroup.value.hora;
    this.solicitud.fecha = this.formGroup.value.fecha+" "+
    hora.hour +":"+hora.minute+":00";
    var codigoMonitor = this.formGroup.value.monitor;
    this.monitor = this.monitores.find(a => a.identificacion == codigoMonitor);
    this.solicitud.monitor = this.monitor.nombre;

    if (this.usuario.tipo == "Administrador") {
      this.solicitud.idpersona = this.persona.identificacion;
    }
    else {
      this.solicitud.idpersona = this.usuario.idPersona;
    }
  }

}
