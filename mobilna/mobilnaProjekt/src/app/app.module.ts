import { BrowserModule } from '@angular/platform-browser';
import { ErrorHandler, NgModule } from '@angular/core';
import { IonicApp, IonicErrorHandler, IonicModule } from 'ionic-angular';

import { StatusBar } from '@ionic-native/status-bar';
import { SplashScreen } from '@ionic-native/splash-screen';

//my modules
import { HttpModule } from '@angular/http';
import { IonicStorageModule } from '@ionic/storage';
import { SMS } from '@ionic-native/sms';

//pages
import { MyApp } from './app.component';
import { HomePage } from '../pages/home/home';
import { ListPage } from '../pages/list/list';
import { LeaguePage } from '../pages/league/league';
import { TeamPage } from '../pages/team/team';
import { LoginPage } from '../pages/login/login';
import { MenuPage } from '../pages/menu/menu';
import { ShowteamPage } from '../pages/showteam/showteam';
import { InvitePage } from '../pages/invite/invite';

//services
import { GlobalProvider } from '../providers/global/global';


import { StatisticsPage } from '../pages/statistics/statistics';
import { TeamDetailsPage } from '../pages/team-details/team-details';
import { PlayerDetailsPage } from '../pages/player-details/player-details';

import { StatisticsProvider } from '../providers/statistics/statistics';
import { TeamDetailsProvider } from '../providers/team-details/team-details';



@NgModule({
  declarations: [ //add pages?
    MyApp,
    HomePage,
    LeaguePage,
    TeamPage,
    LoginPage,
    ListPage,
    MenuPage,
    ShowteamPage,
    InvitePage,
    StatisticsPage, TeamDetailsPage, PlayerDetailsPage
  ],
  imports: [ //add modules?
    BrowserModule,
    IonicModule.forRoot(MyApp),
    //add
    IonicStorageModule.forRoot(), //storage
    HttpModule //http
  ],
  bootstrap: [IonicApp],
  entryComponents: [ //add pages?
    MyApp,
    HomePage,
    LeaguePage,
    TeamPage,
    LoginPage,
    ListPage,
    MenuPage,
    ShowteamPage,
    InvitePage,
    StatisticsPage, TeamDetailsPage, PlayerDetailsPage
  ],
  providers: [ //add services?
    StatusBar,
    SplashScreen,
    {provide: ErrorHandler, useClass: IonicErrorHandler},
    //add
    GlobalProvider,
    SMS,
    StatisticsProvider, TeamDetailsProvider
  ]
})
export class AppModule {}
