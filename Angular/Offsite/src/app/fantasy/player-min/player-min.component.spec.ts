import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { PlayerMinComponent } from './player-min.component';

describe('PlayerMinComponent', () => {
  let component: PlayerMinComponent;
  let fixture: ComponentFixture<PlayerMinComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PlayerMinComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(PlayerMinComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should be created', () => {
    expect(component).toBeTruthy();
  });
});
