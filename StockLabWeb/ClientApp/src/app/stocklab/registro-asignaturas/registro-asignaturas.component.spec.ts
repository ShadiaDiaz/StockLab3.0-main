import { ComponentFixture, TestBed } from '@angular/core/testing';

import { RegistroAsignaturasComponent } from './registro-asignaturas.component';

describe('RegistroAsignaturasComponent', () => {
  let component: RegistroAsignaturasComponent;
  let fixture: ComponentFixture<RegistroAsignaturasComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ RegistroAsignaturasComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(RegistroAsignaturasComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
