import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CreditInputsComponent } from './credit-inputs.component';

describe('CreditInputsComponent', () => {
  let component: CreditInputsComponent;
  let fixture: ComponentFixture<CreditInputsComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ CreditInputsComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(CreditInputsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
