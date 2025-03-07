import { ComponentFixture, TestBed } from '@angular/core/testing';

import { Studen2Component } from './studen2.component';

describe('Studen2Component', () => {
  let component: Studen2Component;
  let fixture: ComponentFixture<Studen2Component>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [Studen2Component]
    })
    .compileComponents();

    fixture = TestBed.createComponent(Studen2Component);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
