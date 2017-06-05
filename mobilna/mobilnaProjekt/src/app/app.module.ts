import { NgModule, ErrorHandler } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { IonicApp, IonicModule, IonicErrorHandler } from 'ionic-angular';
import { MyApp } from './app.component';

import { HomePage } from '../pages/home/home';
import { TabsPage } from '../pages/tabs/tabs';
import { LogInPage } from '../pages/log-in/log-in';
import { HelpPage } from '../pages/help/help';
import { LeaguePage } from '../pages/league/league';
import { PickTeamPage } from '../pages/pick-team/pick-team';
import { StatisticsPage } from '../pages/statistics/statistics';
import { TransfersPage } from '../pages/transfers/transfers';


import { HttpModule } from '@angular/http';
import { StatusBar } from '@ionic-native/status-bar';
import { SplashScreen } from '@ionic-native/splash-screen';
import { UserProvider } from '../providers/user/user';
import { GlobalProvider } from '../providers/global/global';

@NgModule({
  declarations: [
    MyApp,
    HomePage,
    TabsPage,
    LogInPage,
    HelpPage,
    LeaguePage,
    PickTeamPage,
    StatisticsPage,
    TransfersPage
  ],
  imports: [
    BrowserModule,
    IonicModule.forRoot(MyApp),
    HttpModule
  ],
  bootstrap: [IonicApp],
  entryComponents: [
    MyApp,
    HomePage,
    TabsPage,
    LogInPage,
    HelpPage,
    LeaguePage,
    PickTeamPage,
    StatisticsPage,
    TransfersPage
  ],
  providers: [
    StatusBar,
    SplashScreen,
    {provide: ErrorHandler, useClass: IonicErrorHandler},
    UserProvider,
    GlobalProvider
  ]
})
export class AppModule {}
