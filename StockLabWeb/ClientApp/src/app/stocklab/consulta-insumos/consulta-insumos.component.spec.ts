import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ConsultaInsumosComponent } from './consulta-insumos.component';

describe('ConsultaInsumosComponent', () => {
  let component: ConsultaInsumosComponent;
  let fixture: ComponentFixture<ConsultaInsumosComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ConsultaInsumosComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ConsultaInsumosComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
