import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PersonaSolicitudInsumosComponent } from './persona-solicitud-insumos.component';

describe('PersonaSolicitudInsumosComponent', () => {
  let component: PersonaSolicitudInsumosComponent;
  let fixture: ComponentFixture<PersonaSolicitudInsumosComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ PersonaSolicitudInsumosComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(PersonaSolicitudInsumosComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
