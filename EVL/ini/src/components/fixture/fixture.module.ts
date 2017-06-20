import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { FixtureComponent } from './fixture';

@NgModule({
  declarations: [
    FixtureComponent,
  ],
  imports: [
    IonicPageModule.forChild(FixtureComponent),
  ],
  exports: [
    FixtureComponent
  ]
})
export class FixtureComponentModule {}
