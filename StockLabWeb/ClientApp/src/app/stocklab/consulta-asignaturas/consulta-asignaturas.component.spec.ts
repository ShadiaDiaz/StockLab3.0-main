import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ConsultaAsignaturasComponent } from './consulta-asignaturas.component';

describe('ConsultaAsignaturasComponent', () => {
  let component: ConsultaAsignaturasComponent;
  let fixture: ComponentFixture<ConsultaAsignaturasComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ConsultaAsignaturasComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ConsultaAsignaturasComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
