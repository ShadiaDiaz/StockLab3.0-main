import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PeriodoRegistroComponent } from './periodo-registro.component';

describe('PeriodoRegistroComponent', () => {
  let component: PeriodoRegistroComponent;
  let fixture: ComponentFixture<PeriodoRegistroComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ PeriodoRegistroComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(PeriodoRegistroComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
