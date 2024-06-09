import { ComponentFixture, TestBed } from '@angular/core/testing';
import { FoodContainerComponent } from './food-container.component';

describe('FoodContainerComponent', () => {
  let component: FoodContainerComponent;
  let fixture: ComponentFixture<FoodContainerComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      imports: [FoodContainerComponent]
    }).createComponent(FoodContainerComponent);

    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    // expect(component).toBeTruthy();
  });
});
