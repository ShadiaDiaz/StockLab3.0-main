import { ComponentFixture, TestBed } from '@angular/core/testing';

import { SolicitudIndividualComponent } from './solicitud-individual.component';

describe('SolicitudIndividualComponent', () => {
  let component: SolicitudIndividualComponent;
  let fixture: ComponentFixture<SolicitudIndividualComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ SolicitudIndividualComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(SolicitudIndividualComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
