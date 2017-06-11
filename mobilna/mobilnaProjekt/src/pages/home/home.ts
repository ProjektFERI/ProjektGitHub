import { Component } from '@angular/core';
import { NavController } from 'ionic-angular';
import { HelpPage } from '../help/help';
import { LeaguePage } from '../league/league';
import { StatisticsPage } from '../statistics/statistics';

@Component({
  selector: 'page-home',
  templateUrl: 'home.html'
})
export class HomePage {

  constructor(public navCtrl: NavController) {

  }

  ligaShow(){
    this.navCtrl.push(LeaguePage);
  }

  statShow(){
    this.navCtrl.push(StatisticsPage);
  }

  helpShow(){
    this.navCtrl.push(HelpPage);
  }

}
