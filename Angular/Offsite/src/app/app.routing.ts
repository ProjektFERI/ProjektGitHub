import { Routes, RouterModule } from '@angular/router';

import { AuthGuard }            from './_guards/auth.guards';

import { AppComponent }         from './app.component';
import { NavbarComponent }      from './navbar/navbar.component';
import { HomeComponent }        from './home/home.component';
import { FantasyComponent }     from './fantasy/fantasy.component';
import { LoginComponent }       from './login/login.component';
import { SignUpComponent }      from './sign-up/sign-up.component';

const appRoutes : Routes = [
    { path: '', component: HomeComponent },
    { path: 'fantasy', component: FantasyComponent },
    { path: 'login', component: LoginComponent },
    { path: 'sign-up', component: SignUpComponent },

    /* SEM SE PRIDEJO DODATNE POTI + PREVERJANJE ALI JE POT LAHKO DOSTOPANA z AUTH GUARD */

    //drugace preusmeri
    //{ path: '**', redirectTo: ''}
];

export const routing = RouterModule.forRoot(appRoutes);
