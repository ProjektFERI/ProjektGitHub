import { NgModule, ErrorHandler } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { IonicApp, IonicModule, IonicErrorHandler } from 'ionic-angular';
import { MyApp } from './app.component';

import { HomePage } from '../pages/home/home';
import { TabsPage } from '../pages/tabs/tabs';
import { LogInPage } from '../pages/log-in/log-in';
import { HelpPage } from '../pages/help/help';
import { LeaguePage } from '../pages/league/league';
import { StatisticsPage } from '../pages/statistics/statistics';
import { PlayerDetailsPage } from '../pages/player-details/player-details';
import { TeamDetailsPage } from '../pages/team-details/team-details';
import { NewsPage } from '../pages/news/news';
import { NewsEnaPage } from '../pages/news-ena/news-ena';


import { HttpModule } from '@angular/http';
import { StatusBar } from '@ionic-native/status-bar';
import { SplashScreen } from '@ionic-native/splash-screen';
import { UserProvider } from '../providers/user/user';
import { GlobalProvider } from '../providers/global/global';
import { StatisticsProvider } from '../providers/statistics/statistics';
import { TeamDetailsProvider } from '../providers/team-details/team-details';
import { LeagueProvider } from '../providers/league/league';
import { NewsProvider } from '../providers/news/news';

@NgModule({
  declarations: [
    MyApp,
    HomePage,
    TabsPage,
    LogInPage,
    HelpPage,
    LeaguePage,
    StatisticsPage,
    PlayerDetailsPage,
    TeamDetailsPage,
    NewsPage,
    NewsEnaPage
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
    StatisticsPage,
    PlayerDetailsPage,
    TeamDetailsPage,
    NewsPage,
    NewsEnaPage
  ],
  providers: [
    StatusBar,
    SplashScreen,
    {provide: ErrorHandler, useClass: IonicErrorHandler},
    UserProvider,
    GlobalProvider,
    StatisticsProvider,
    TeamDetailsProvider,
    LeagueProvider,
    NewsProvider
  ]
})
export class AppModule {}
