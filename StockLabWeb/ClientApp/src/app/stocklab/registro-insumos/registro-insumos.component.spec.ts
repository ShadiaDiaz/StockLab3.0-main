import { ComponentFixture, TestBed } from '@angular/core/testing';


import { RegistroInsumosComponent } from './registro-insumos.component';

describe('RegistroInsumosComponent', () => {
  let component: RegistroInsumosComponent;
  let fixture: ComponentFixture<RegistroInsumosComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ RegistroInsumosComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(RegistroInsumosComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });


  
});
