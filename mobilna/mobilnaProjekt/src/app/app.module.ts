import { BrowserModule } from '@angular/platform-browser';
import { ErrorHandler, NgModule } from '@angular/core';
import { IonicApp, IonicErrorHandler, IonicModule } from 'ionic-angular';

import { StatusBar } from '@ionic-native/status-bar';
import { SplashScreen } from '@ionic-native/splash-screen';

//my modules
import { HttpModule } from '@angular/http';
import { IonicStorageModule } from '@ionic/storage';
import { SMS } from '@ionic-native/sms';
//import { Contacts, Contact, ContactField, ContactName } from '@ionic-native/contacts';
import { Contacts, Contact } from '@ionic-native/contacts';
import { LocalNotifications } from '@ionic-native/local-notifications';
import { TextToSpeech } from '@ionic-native/text-to-speech';
import { Vibration } from '@ionic-native/vibration';

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

import { FixturesPage } from '../pages/fixtures/fixtures';
import { FixtureDetailsPage } from '../pages/fixture-details/fixture-details';
import { FixtureComponent } from '../components/fixture/fixture';



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
    StatisticsPage, TeamDetailsPage, PlayerDetailsPage,
    FixturesPage, FixtureDetailsPage,
    // : samo declaration vvv
    FixtureComponent
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
    StatisticsPage, TeamDetailsPage, PlayerDetailsPage,
    FixturesPage, FixtureDetailsPage
  ],
  providers: [ //add services?
    StatusBar,
    SplashScreen,
    {provide: ErrorHandler, useClass: IonicErrorHandler},
    //add
    GlobalProvider,
    SMS,
    //CONTACTS?
    //Contacts, Contact, ContactField, ContactName, //contacts
    Contacts,
    Contact,
    //CONTACTS?
    LocalNotifications,
    TextToSpeech,
    Vibration,
    StatisticsProvider, TeamDetailsProvider
  ]
})
export class AppModule {}
