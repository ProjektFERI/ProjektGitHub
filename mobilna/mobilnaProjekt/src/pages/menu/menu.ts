import { Component, ViewChild } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { Nav } from 'ionic-angular';

//parent nav
import {App, ViewController} from 'ionic-angular';

//my modules
import { Output, EventEmitter } from '@angular/core';

//pages
import { HomePage } from '../home/home';
import { ListPage } from '../list/list';
import { LeaguePage } from '../league/league';
import { LoginPage } from '../login/login';
import { ShowteamPage } from '../showteam/showteam';
import { InvitePage } from '../invite/invite';

//providers
import {GlobalProvider} from '../../providers/global/global';


import { StatisticsPage } from '../statistics/statistics';




@IonicPage()
@Component({
  selector: 'page-menu',
  templateUrl: 'menu.html',
})
export class MenuPage {
  @ViewChild(Nav) nav: Nav;
  @Output() LogoutEvent = new EventEmitter();

  rootPage: any = HomePage;

  pages: Array<{title: string, component: any}>;

  constructor(private globalProvider: GlobalProvider, public viewCtrl: ViewController, public appCtrl: App) { //public navCtrl: NavController, public navParams: NavParams

    //manu pages
    this.pages = [
      { title: 'Home', component: HomePage },
      { title: 'My Team', component: ShowteamPage },
      { title: 'League', component: LeaguePage },
      { title: 'Statistics', component: StatisticsPage },
      { title: 'Invite', component: InvitePage }
      //+logout
    ];


    //TEST
    console.log(this.globalProvider.userTeam);

  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad MenuPage');
  }



  openPage(page)
  {
    this.nav.setRoot(page.component);
  }

  logOut()
  {
    //this.LogoutEvent.emit(true);
    this.appCtrl.getRootNav().setRoot(LoginPage)  ;
  }






}
