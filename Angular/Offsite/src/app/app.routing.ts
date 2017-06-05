import { Routes, RouterModule } from '@angular/router';

import { AuthGuard }            from './_guards/auth.guards';

import { AppComponent }         from './app.component';
import { NavbarComponent }      from './navbar/navbar.component';
import { HomeComponent }        from './home/home.component';
import { FantasyComponent }     from './fantasy/fantasy.component';
import { LoginComponent }       from './login/login.component';
import { SignUpComponent }      from './sign-up/sign-up.component';

import { LeagueComponent }      from './fantasy/league/league.component';
import { PickTeamComponent }    from './fantasy/pick-team/pick-team.component';
import { TransfersComponent }   from './fantasy/transfers/transfers.component';
import { HelpComponent }        from './fantasy/help/help.component';
import { StatisticsComponent }  from './fantasy/statistics/statistics.component';
import { UserlistComponent }    from './userlist/userlist.component';
import { ShowteamComponent }    from './showteam/showteam.component';
import { FixturesComponent }    from './fixtures/fixtures.component';

/*
 * Definirane mozne poti v aplikaciji - children so "podpoti"
 *
 * canActivate: [AuthGuard]     doloca ce lahko uporabnik dostopa do poti, v AuthGuard je implementirano preverjanje ali je prijavljen
*/
const appRoutes : Routes = [
    { path: '', component: HomeComponent },
    { path: 'fantasy', component: FantasyComponent,
        children: [
            { path: 'league', component: LeagueComponent },
            { path: 'pick-team', component: PickTeamComponent, canActivate: [AuthGuard] },
            { path: 'transfers', component: TransfersComponent, canActivate: [AuthGuard] },
            { path: 'statistics', component: StatisticsComponent },
            { path: 'help', component: HelpComponent },
            { path: '**', redirectTo: 'league' }                                                    //default pot, ce je vneseno kaj drugega kot je mozno
        ]},
    { path: 'userlist', component: UserlistComponent },
    { path: 'fixtures', component: FixturesComponent },
    { path: 'showteam', component: ShowteamComponent },
    { path: 'login', component: LoginComponent },
    { path: 'sign-up', component: SignUpComponent },

    /* SEM SE PRIDEJO DODATNE POTI + PREVERJANJE ALI JE POT LAHKO DOSTOPANA z AUTH GUARD */

    { path: '**', redirectTo: '' }
];

export const routing = RouterModule.forRoot(appRoutes);
