import { Component } from '@angular/core';
import { IonicPage, NavParams, ViewController } from 'ionic-angular';

import { Player }			from '../../_models/player';

@IonicPage()
@Component({
  selector: 'page-player-details',
  templateUrl: 'player-details.html',
})
export class PlayerDetailsPage
{
	SelectedPlayer : Player;

  	constructor(private navParams: NavParams, private viewController : ViewController)
  	{
		    this.SelectedPlayer = navParams.get("pPlayer");
  	}

  	ionViewDidLoad()
  	{

  	}


	closeModal()
	{
		this.viewController.dismiss();
	}


	applyColor(value : number) : string
    {
        if(value > 1 && value < 50)
            return "#e9573e";
        else if(value >= 50 && value < 60)
            return "#e77e23";
        else if(value >= 60 && value < 71)
            return "#f6bb43";
        else if(value >= 71 && value < 80)
            return "#8dc153";
        else
            return "#239454";
    }
}
