import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { FixturesPage } from './fixtures';

@NgModule({
  declarations: [
    FixturesPage,
  ],
  imports: [
    IonicPageModule.forChild(FixturesPage),
  ],
  exports: [
    FixturesPage
  ]
})
export class FixturesPageModule {}
