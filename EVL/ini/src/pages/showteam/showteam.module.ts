import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { ShowteamPage } from './showteam';

@NgModule({
  declarations: [
    ShowteamPage,
  ],
  imports: [
    IonicPageModule.forChild(ShowteamPage),
  ],
  exports: [
    ShowteamPage
  ]
})
export class ShowteamPageModule {}
