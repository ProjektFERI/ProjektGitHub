import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { NewsEnaPage } from './news-ena';

@NgModule({
  declarations: [
    NewsEnaPage,
  ],
  imports: [
    IonicPageModule.forChild(NewsEnaPage),
  ],
  exports: [
    NewsEnaPage
  ]
})
export class NewsEnaPageModule {}
