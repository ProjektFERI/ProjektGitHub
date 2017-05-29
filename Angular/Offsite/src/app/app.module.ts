import { BrowserModule }            from '@angular/platform-browser';
import { NgModule }                 from '@angular/core';
import { FormsModule }              from '@angular/forms';
import { HttpModule }               from '@angular/http';
import { RouterModule }             from '@angular/router';

import { routing }                  from './app.routing';
import { AuthGuard }                from './_guards/auth.guards';
import { AuthenticationService }    from './_services/authentication.service';

import { AppComponent }             from './app.component';
import { NavbarComponent }          from './navbar/navbar.component';
import { HomeComponent }            from './home/home.component';
import { FantasyComponent }         from './fantasy/fantasy.component';
import { LoginComponent }           from './login/login.component';
import { SignUpComponent }          from './sign-up/sign-up.component';

@NgModule({
  declarations: [
    AppComponent,
    NavbarComponent,
    HomeComponent,
    FantasyComponent,
    LoginComponent,
    SignUpComponent
  ],
  imports: [
    BrowserModule,
    FormsModule,
    HttpModule,
	routing
  ],
  providers: [
      AuthGuard,
      AuthenticationService
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
