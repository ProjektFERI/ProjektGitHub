import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';

//providers
import {GlobalProvider} from '../../providers/global/global';

//classes
import { Team }     from '../../_models/team';
import { Player }     from '../../_models/player';
import { User }     from '../../_models/user';


import { PlayerDetailsPage }		from '../player-details/player-details';

import { AlertController } from 'ionic-angular';

import { TextToSpeech } from '@ionic-native/text-to-speech';

import { LocalNotifications } from '@ionic-native/local-notifications';

//import { Vibration } from '@ionic-native/vibration';


/**
 * Generated class for the ShowteamPage page.
 *
 * See http://ionicframework.com/docs/components/#navigation for more info
 * on Ionic pages and navigation.
 */
@IonicPage()
@Component({
  selector: 'page-showteam',
  templateUrl: 'showteam.html',
})
export class ShowteamPage {

  userTeam : Team; //the user
  userPlayers : Player[]; //11
  CanPlay : boolean;

  logedinPlayers : Player[];
  FixtureResult : any;

  constructor(private tts: TextToSpeech, private localNotifications: LocalNotifications, private globalProvider: GlobalProvider, public navCtrl: NavController, public navParams: NavParams, public alertCtrl: AlertController) {

    if(navParams.get("selectedTeam"))
    {
      this.userTeam = navParams.get("selectedTeam");
      this.loadPlayers();
    }
    else
    {
      this.userTeam = this.globalProvider.userTeam;
      this.userPlayers = this.globalProvider.userPlayers;
    }

    //ayy
    this.CanPlay = false;
    this.updateCanPlay();
    console.log(this.CanPlay);

    this.loadPlayersLogedin();

    this.FixtureResult = {};
    this.FixtureResult.Status = "Loading";
    this.FixtureResult.Result = "Loading";

  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad ShowteamPage');


  }


  loadPlayers() //startin 11
  {
      //console.log();
      this.globalProvider.fetchPlayers(this.userTeam).subscribe(
          response =>
          {
              this.userPlayers = response;
             // console.log(this.startingPlayers);
          }
      )
  }

  loadPlayersLogedin() //startin 11 logedin
  {
      //console.log();
      this.globalProvider.fetchPlayers(this.globalProvider.userTeam).subscribe(
          response =>
          {
              this.logedinPlayers = response;
             // console.log(this.startingPlayers);
          }
      )
  }

  updateCanPlay()
    {
        //console.log(this.globalService.UserTeam.is_playable && this.selectedTeam.is_playable);
        if(this.globalProvider.userTeam.is_playable && this.userTeam.is_playable)
        {
            this.globalProvider.countTodayMatches(this.globalProvider.userTeam.ID).subscribe(
                response =>
                {
                    var noOfMatchesToday = response;
                    console.log("Matches: " + noOfMatchesToday);
                    if(noOfMatchesToday < 5) {
                        this.CanPlay = true;
                        console.log("match<5: " + this.CanPlay);
                    }else{
                        this.CanPlay = false;
                        console.log("match<5 nope: " + this.CanPlay);
                        //notification!!!
                        this.openNotification(1, "Offsite: Can't play:", "You have already played 5 games today. You have to wait till tomorrow to play a game.");
                    }
                    if(this.globalProvider.userTeam.ID == this.userTeam.ID){
                        this.CanPlay = false;
                        console.log("same?: " + this.CanPlay);
                    }

                    console.log("Checked: " + this.CanPlay);

                }
            )
        }
        else{
          this.CanPlay = false;
          console.log("botplayable?: " + this.CanPlay);
        }


    }

    playerDetails(player: Player){

      this.navCtrl.push(PlayerDetailsPage, {pPlayer : player});

    }

    play(){

      //console.log("AYY?: " + this.CanPlay);
      this.simulate();

    }


    simulate()
  {
    if(!this.CanPlay)
    return;
      /*console.log(this.globalService.UserTeam);
      console.log(this.selectedTeam);
      console.log(this.userStartingPlayers);
      console.log(this.startingPlayers);*/
      var requestInfo = { UserTeam : this.globalProvider.userTeam,
                          OpponentTeam : this.userTeam,
                          UserPlayers : this.logedinPlayers,
                          OpponentPlayers : this.userPlayers
                      };
      this.globalProvider.simulate(requestInfo).subscribe(
          response =>
          {
              this.FixtureResult = response;
              console.log(this.FixtureResult); //ayyayy
              this.showAlert(this.FixtureResult.Status, this.FixtureResult.Result);
              this.updateCanPlay();

          }
      )


      //console.log("CAN PLAY:" + this.CanPlay);
  }

  showAlert(title, sub)
  {
    let alert = this.alertCtrl.create({
      title: title,
      subTitle: sub,
      buttons: ['OK']
    });
    alert.present();
  }

  readSite()
  {

    let mainText : string = "Team: " + this.userTeam.name + "\n Value: " + this.userTeam.value + "\n Wins: " + this.userTeam.wins + "\n Draws: " + this.userTeam.draws + "\n Losses: " + this.userTeam.losses;
    mainText += "\n Points: " + this.userTeam.points + "\n Goals scored: " + this.userTeam.goals_for + "\n Goals recieved: " + this.userTeam.goals_against;

    this.tts.speak(mainText)
      .then(() => console.log('TTS Success'))
      .catch((reason: any) => console.log(reason));


  }

  openNotification(id, title, text)
  {
    /*
    var checkBool : Boolean = false;

    this.localNotifications.isPresent(id).then(function (present) {
      if (present) {
        checkBool = true;
        this.showAlert("checkBool:", true);
      } else {
        this.showAlert("checkBool:", false);
      }
    });
    //this.showAlert("checkBool:", checkBool);
    */

    if(true)
    {
      console.log("Notification:");
      this.localNotifications.schedule({
        id: id,
        title: title,
        text: text,
      });
    }
    
  }





}
