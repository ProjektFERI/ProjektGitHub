import { Component } from '@angular/core';
import { Http, HttpModule } from '@angular/http';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { HomePage } from '../home/home';
import { UserProvider, User, APIresponse } from '../../providers/user/user';
import { GlobalProvider } from  '../../providers/global/global';
/**
 * Generated class for the LogInPage page.
 *
 * See http://ionicframework.com/docs/components/#navigation for more info
 * on Ionic pages and navigation.
 */

 // prijava, igra;  ppj -> ob nagibanju telefona izbere drugega nasprotnika (native)

@IonicPage()
@Component({
  selector: 'page-log-in',
  templateUrl: 'log-in.html',
  providers: [UserProvider, GlobalProvider, HttpModule]
})
export class LogInPage {

  user: User;
  apiResponse: APIresponse;

  constructor(public http: Http, public navCtrl: NavController, public navParams: NavParams, public userProvider: UserProvider, public globalProvider: GlobalProvider) {
    this.user = new User();
    this.user.ID = null;
    this.user.username = '';
    this.user.password = '';
    this.user.email = '';
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad LogInPage');
  }

  signIn(){

    this.userProvider.login(this.user).subscribe(
        response =>
        {
            this.apiResponse = response;                                        //dobljen response od servera

            if(this.apiResponse.StatusCode == 200)                              //ce je prijava uspela
                this.navCtrl.push(HomePage);                                    //preusmeritev na domaco stran
            else
                alert(this.apiResponse.Status);                                 //NAMESTO ALERT PRIDE (verjetno) NEKAJ DRUGEGA  TEST

            this.globalProvider.updateLoggedIn(true);                            //posodobimo globalno vrednost loggedIn - ali je uporabnik prijavljen na TRUE
            this.globalProvider.updateUserTeam(this.apiResponse.UserTeam);       //shranimo uporabnikovo ekipo
            this.globalProvider.updateUserPlayers(this.apiResponse.Players);     //in igralce v globalni scope alikacije
            this.globalProvider.createPlayersCopy(this.apiResponse.Players);     //naredimo backup dobljenih igralcev
            this.globalProvider.createTeamCopy(this.apiResponse.UserTeam);       //naredimo se kopijo ekipe
            console.log(this.globalProvider.UserTeam);
            console.log(this.globalProvider.UserPlayers);
        },
        error =>
        {
            console.log(error);
        }
    )

  }

}
