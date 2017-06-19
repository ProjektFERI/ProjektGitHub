import { Component, } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';

//parent nav
import {App, ViewController} from 'ionic-angular';

//my modules
import { Output, EventEmitter } from '@angular/core';
import { Storage } from '@ionic/storage';
import { Inject, forwardRef } from '@angular/core';

//import { AuthenticationService }    from '../../_services/authentication.service';

//classes
import { User }                     from '../../_models/user';
import { APIresponse }              from '../../_models/APIresponse';

//pages
import { MenuPage } from '../menu/menu';

//providers
import {GlobalProvider} from '../../providers/global/global';



@IonicPage()
@Component({
  selector: 'page-login',
  templateUrl: 'login.html',
})
export class LoginPage {
  user : User;
  //apiResponse : APIresponse;

  @Output() LoginEvent = new EventEmitter();

  constructor(private storage: Storage, private globalProvider: GlobalProvider, public viewCtrl: ViewController, public appCtrl: App) { //, private authenticationService : AuthenticationService, public navCtrl: NavController, public navParams: NavParams,

    this.user = new User();
    this.user.username = "";
    this.user.password = "";

  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad LoginPage');
  }


  signIn()
  {

    this.globalProvider.login(this.user).subscribe(
            response =>
            {

                if(response.StatusCode == 200)
                {
                    console.log(response);
                    this.globalProvider.isLoggedIn = true;
                    this.globalProvider.userTeam = response.UserTeam;
                    this.globalProvider.userPlayers = response.Players;
                    //this.LoginEvent.emit(true);
                    this.appCtrl.getRootNav().setRoot(MenuPage); //change nav root
                }
                else
                {
                  console.log("nope");
                  alert(response.Status);
                }

            },
            error =>
            {
                console.log(error);
            }
        )

  }

  test(){
    this.appCtrl.getRootNav().setRoot(MenuPage); //change nav root
  }






}
