import { Component, Input, OnInit } from '@angular/core';
import { NgbActiveModal, NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { FormGroup, FormBuilder, Validators, AbstractControl } from '@angular/forms';
import { InsumoService } from 'src/app/services/insumo.service';
import { Insumo } from '../../../stocklab/models/insumo';
import { ModalComponent } from '../modal.component';

@Component({
  selector: 'app-actualizar-cantidad-insumo-modal',
  templateUrl: './actualizar-cantidad-insumo-modal.component.html',
  styleUrls: ['./actualizar-cantidad-insumo-modal.component.css']
})
export class ActualizarCantidadInsumoModalComponent implements OnInit {

  @Input() title;
  @Input() cuerpo;
  insumo: Insumo;
  insumo2: Insumo;
  item: string;
  formGroup: FormGroup;
  constructor(public modal: NgbActiveModal, private formBuilder: FormBuilder
    , private insumoService: InsumoService, private modalService: NgbModal) { }

  ngOnInit(): void {
    this.insumo2 = new Insumo;
    this.insumo = new Insumo;
    this.obtener();
    this.buildForm();
  }

  private buildForm() {
    this.insumo2 = new Insumo();
    this.insumo2.cantidad = 0;
    this.formGroup = this.formBuilder.group({
      cantidad: [this.insumo.cantidad, [Validators.required, this.ValidaCantidad]]
    });
  }

  private ValidaCantidad(control: AbstractControl) {
    const cantidad = control.value;
    if (cantidad <= 0) {
      return { validCantidad: true, messageCantidad: 'Cantidad menor o igual a 0' };
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

  obtener() {
    this.item = localStorage.getItem('insumo')
    this.insumoService.getInsumo(this.item).subscribe(result => {
      if (result != null) {
        this.insumo = result;
      }
    });
  }

  agregar() {
    this.insumo2 = this.formGroup.value;
    this.insumoService.put(this.item,this.insumo2.cantidad).subscribe(result => {
      if(result != null)
      {
        const messageBox = this.modalService.open(ModalComponent)
        messageBox.componentInstance.title = "Resultado Operación";
        messageBox.componentInstance.cuerpo = 'Cantidad Actualizada!!! :-)';
        this.insumo = result;
      }
    });
  }

}
