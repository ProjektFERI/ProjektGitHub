import { BrowserModule }            from '@angular/platform-browser';
import { NgModule }                 from '@angular/core';
import { FormsModule }              from '@angular/forms';
import { HttpModule }               from '@angular/http';
import { RouterModule }             from '@angular/router';

import { routing }                  from './app.routing';
import { AuthGuard }                from './_guards/auth.guards';
import { AuthenticationService }    from './_services/authentication.service';
import { GlobalService }            from './_services/global.service';
import { TransfersService }         from './fantasy/transfers/transfers.service';
import { PickTeamService }          from './fantasy/pick-team/pick-team.service';
import { StatisticsService }        from './fantasy/statistics/statistics.service';
import { UserlistService }          from './userlist/userlist.service';
import { ShowteamService }          from './showteam/showteam.service';
import { LeagueService }            from './fantasy/league/league.service';
import { FixturesService }          from './fixtures/fixtures.service';
import { FixtureService }          from './fixtures/fixture/fixture.service';


import { AppComponent }             from './app.component';
import { NavbarComponent }          from './navbar/navbar.component';
import { HomeComponent }            from './home/home.component';
import { FantasyComponent }         from './fantasy/fantasy.component';
import { LoginComponent }           from './login/login.component';
import { SignUpComponent }          from './sign-up/sign-up.component';
import { LeagueComponent }          from './fantasy/league/league.component';
import { PickTeamComponent }        from './fantasy/pick-team/pick-team.component';
import { TransfersComponent }       from './fantasy/transfers/transfers.component';
import { HelpComponent }            from './fantasy/help/help.component';
import { PlayerMinComponent }       from './fantasy/player-min/player-min.component';
import { StatisticsComponent }      from './fantasy/statistics/statistics.component';
import { UserlistComponent }        from './userlist/userlist.component';
import { ShowteamComponent }        from './showteam/showteam.component';
import { FixturesComponent }        from './fixtures/fixtures.component';
import { FixtureComponent }         from './fixtures/fixture/fixture.component';

@NgModule({
  declarations: [
      AppComponent,
      NavbarComponent,
      HomeComponent,
      FantasyComponent,
      LoginComponent,
      SignUpComponent,
      LeagueComponent,
      PickTeamComponent,
      TransfersComponent,
      HelpComponent,
      PlayerMinComponent,
      StatisticsComponent,
      UserlistComponent,
      ShowteamComponent,
      FixturesComponent,
      FixtureComponent
  ],
  imports: [
      BrowserModule,
      FormsModule,
      HttpModule,
	  routing
  ],
  providers: [
      AuthGuard,
      AuthenticationService,
      TransfersService,
      PickTeamService,
      StatisticsService,
      UserlistService,
      ShowteamService,
      LeagueService,
      FixturesService,
      FixtureService
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
