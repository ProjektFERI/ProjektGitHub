import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';

/**
 * Generated class for the TeamPage page.
 *
 * See http://ionicframework.com/docs/components/#navigation for more info
 * on Ionic pages and navigation.
 */
@IonicPage()
@Component({
  selector: 'page-team',
  templateUrl: 'team.html',
})
export class TeamPage {
  players: Array<{name: string, position: string, score: any}>;

  constructor(public navCtrl: NavController, public navParams: NavParams) {

    //generate players (for now)
    this.players = [];
    for (let i = 1; i < 16; i++) {
      this.players.push({
        name: 'Player ' + i,
        position: 'ST',
        score: 90 - i
      });
    }

  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad TeamPage');
  }

}
