import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PopulateCreditDialogComponent } from './populate-credit-dialog.component';

describe('PopulateCreditDialogComponent', () => {
  let component: PopulateCreditDialogComponent;
  let fixture: ComponentFixture<PopulateCreditDialogComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ PopulateCreditDialogComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(PopulateCreditDialogComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
