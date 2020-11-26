import { Component, Input, OnInit } from '@angular/core';
import { NgbActiveModal, NgbModal } from '@ng-bootstrap/ng-bootstrap';

@Component({
  selector: 'app-actualizar-cantidad-insumo-modal',
  templateUrl: './actualizar-cantidad-insumo-modal.component.html',
  styleUrls: ['./actualizar-cantidad-insumo-modal.component.css']
})
export class ActualizarCantidadInsumoModalComponent implements OnInit {

  @Input() title;
  @Input() cuerpo;
  constructor(public modal: NgbActiveModal) { }

  ngOnInit(): void {
  }

}
