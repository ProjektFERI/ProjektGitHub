import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { FixtureDetailsPage } from './fixture-details';

@NgModule({
  declarations: [
    FixtureDetailsPage,
  ],
  imports: [
    IonicPageModule.forChild(FixtureDetailsPage),
  ],
  exports: [
    FixtureDetailsPage
  ]
})
export class FixtureDetailsPageModule {}
