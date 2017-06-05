import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { PickTeamPage } from './pick-team';

@NgModule({
  declarations: [
    PickTeamPage,
  ],
  imports: [
    IonicPageModule.forChild(PickTeamPage),
  ],
  exports: [
    PickTeamPage
  ]
})
export class PickTeamPageModule {}
