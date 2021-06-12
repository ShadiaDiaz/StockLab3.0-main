import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators, AbstractControl } from '@angular/forms';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { ModalComponent } from 'src/app/@base/modal/modal.component';
import { InsumoService } from 'src/app/services/insumo.service';
import { Insumo } from '../models/insumo';

@Component({
  selector: 'app-registro-insumos',
  templateUrl: './registro-insumos.component.html',
  styleUrls: ['./registro-insumos.component.css']
})
export class RegistroInsumosComponent implements OnInit {

  constructor(private formBuilder: FormBuilder, private insumoService: InsumoService,
    private modalService: NgbModal) {

     }

  get control() {
    return this.formGroup.controls;
  }

  formGroup: FormGroup;
  insumo: Insumo;

  private static ValidaCantidad(control: AbstractControl) {
    const cantidad = control.value;
    if (cantidad <= 0) {
      return { validCantidad: true, messageCantidad: 'Cantidad menor o igual a 0' };
    }
    return null;
  }

  ngOnInit(): void {
    this.buildForm();
  }

  private buildForm() {
    this.insumo = new Insumo();
    this.insumo.item = '';
    this.insumo.descripcion = '';
    this.insumo.marca = '';


    this.formGroup = this.formBuilder.group({
      descripcion: [this.insumo.descripcion, [Validators.required, Validators.maxLength(30)]],
      marca: [this.insumo.marca, [Validators.required, Validators.maxLength(20)]],
      cantidad: [this.insumo.cantidad, [Validators.required, RegistroInsumosComponent.ValidaCantidad]],
      stockminimo: [this.insumo.stockMinimo, [Validators.required, RegistroInsumosComponent.ValidaCantidad]]
    });
  }
  onSubmit() {
    if (this.formGroup.invalid) {
      return;
    }
    this.agregar();
  }


  agregar() {
    this.insumo = this.formGroup.value;
    this.insumoService.post(this.insumo).subscribe(result => {
      if (result != null) {
        const messageBox = this.modalService.open(ModalComponent);
        messageBox.componentInstance.title = 'Resultado Operación';
        messageBox.componentInstance.cuerpo = 'Insumo creado!!! :-)';
        this.insumo = result;
      }
    });
  }

}
