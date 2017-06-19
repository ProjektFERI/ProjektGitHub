import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';

import { TeamPage } from '../team/team';
import { ShowteamPage } from '../showteam/showteam';

import { Team }     from '../../_models/team';

import {GlobalProvider} from '../../providers/global/global';

/**
 * Generated class for the LeaguePage page.
 *
 * See http://ionicframework.com/docs/components/#navigation for more info
 * on Ionic pages and navigation.
 */
@IonicPage()
@Component({
  selector: 'page-league',
  templateUrl: 'league.html',
})
export class LeaguePage {

  teams: Team[];
  clubs: Array<{title: string, points: any}>;

  constructor(private globalProvider: GlobalProvider, public navCtrl: NavController, public navParams: NavParams) {

    //generate clubs (for now)
    this.clubs = [];
    for (let i = 1; i < 11; i++) {
      this.clubs.push({
        title: 'Club ' + i,
        points: 30 - i
      });
    }

    this.LoadTeams();

  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad LeaguePage');
  }

  LoadTeams()
    {

      this.globalProvider.fetchTeams(this.teams).subscribe(
        response =>
        {

          this.teams = response;
          console.log(this.teams);

        }
      )
    }



  itemTapped(event, team) {
    // push on navcrtl nwm
    //this.globalProvider.selectedTeam = item; //set selected team in global DOESNT WORK
    this.navCtrl.push(ShowteamPage, {selectedTeam: team} ); //GIVE PARAMETER INSTEAD
  }

}
