import { Component, ViewChild } from '@angular/core';
import { Nav, Platform } from 'ionic-angular';
import { StatusBar } from '@ionic-native/status-bar';
import { SplashScreen } from '@ionic-native/splash-screen';

import { NavController, NavParams } from 'ionic-angular';

//pages
import { HomePage } from '../pages/home/home';
import { ListPage } from '../pages/list/list';
import { LeaguePage } from '../pages/league/league';
import { LoginPage } from '../pages/login/login';
import { MenuPage } from '../pages/menu/menu';

//providers


@Component({
  templateUrl: 'app.html'
})
export class MyApp {
  @ViewChild(Nav) nav: Nav;

  rootPage: any = LoginPage;

  //if show
  loginSelected : boolean = true;
  menuSelected : boolean = false;

  constructor(public platform: Platform, public statusBar: StatusBar, public splashScreen: SplashScreen) {
    this.initializeApp();
  }

  initializeApp() {
    this.platform.ready().then(() => {
      // Okay, so the platform is ready and our plugins are available.
      // Here you can do any higher level native things you might need.
      this.statusBar.styleDefault();
      this.splashScreen.hide();
    });
  }


  handleLoginEvent(value : any)
  {
      console.log("LOGIN!");
      //this.rootPage = MenuPage;
      this.loginSelected = false;
      this.menuSelected = true;
  }

  handleLogoutEvent(value : any)
  {
      console.log("LOGOUT!");
      //this.rootPage = LoginPage;
      this.loginSelected = true;
      this.menuSelected = true; //if set to false, it chrashes
  }



}
