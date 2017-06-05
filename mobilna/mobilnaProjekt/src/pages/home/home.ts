import { Component } from '@angular/core';
import { NavController } from 'ionic-angular';
import { HelpPage } from '../help/help';
import { LeaguePage } from '../league/league';
import { PickTeamPage } from '../pick-team/pick-team';
import { StatisticsPage } from '../statistics/statistics';
import { TransfersPage } from '../transfers/transfers';


@Component({
  selector: 'page-home',
  templateUrl: 'home.html'
})
export class HomePage {

  constructor(public navCtrl: NavController) {

  }
  statShow(){
    this.navCtrl.push(StatisticsPage);
  }

  helpShow(){
    this.navCtrl.push(HelpPage);
  }

}
