import { Component } from '@angular/core';
import { IonicPage, NavParams, ViewController, ModalController } from 'ionic-angular';

import { Team }					from '../../_models/team';
import { Player }				from '../../_models/player';

import { TeamDetailsProvider } 	from '../../providers/team-details/team-details';
import { PlayerDetailsPage }		from '../player-details/player-details';

@IonicPage()
@Component({
  selector: 'page-team-details',
  templateUrl: 'team-details.html',
})
export class TeamDetailsPage
{
	SelectedTeam 	: Team;
	Players			: Player[];

	constructor(private navParams: NavParams, private viewController : ViewController, private teamDetailsProvider : TeamDetailsProvider, private modalController : ModalController)
	{
		this.SelectedTeam = navParams.get("pTeam");
	}

	ionViewDidLoad()
	{
		this.teamDetailsProvider.getPlayersOfTeam(this.SelectedTeam.ID).subscribe(
			response =>
			{
				this.Players = response;
			}
		)
	}


	closeModal()
	{
		this.viewController.dismiss();
	}


	openModalPlayer(player : Player)
	{
		const modal = this.modalController.create(PlayerDetailsPage, {pPlayer : player});

		modal.present();
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
