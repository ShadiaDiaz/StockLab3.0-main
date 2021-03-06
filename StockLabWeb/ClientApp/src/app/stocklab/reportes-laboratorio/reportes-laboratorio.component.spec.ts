import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ReportesLaboratorioComponent } from './reportes-laboratorio.component';

describe('ReportesLaboratorioComponent', () => {
  let component: ReportesLaboratorioComponent;
  let fixture: ComponentFixture<ReportesLaboratorioComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ReportesLaboratorioComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ReportesLaboratorioComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
