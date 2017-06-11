import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, ModalController } from 'ionic-angular';

import { LeagueProvider } from  '../../providers/league/league';

import { TeamDetailsPage }			from '../team-details/team-details';
import {Team} from '../../_models/team';

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
  allTeams : Team[];

  constructor(public navCtrl: NavController, public navParams: NavParams, private leagueProvider: LeagueProvider, private modalController: ModalController) {

    this.leagueProvider.fetchTeams(this.allTeams).subscribe(
      response =>
      {
        this.allTeams = response;
        console.log(this.allTeams);
      }
    )
  }

  openModalTeam(team : Team)
  {
    const modal = this.modalController.create(TeamDetailsPage, {pTeam : team});

    modal.present();
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad LeaguePage');
  }

}
