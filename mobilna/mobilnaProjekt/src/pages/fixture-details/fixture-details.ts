import { Component } 	from '@angular/core';
import { IonicPage,
	NavController,
	NavParams,
	ViewController,
	ModalController} 	from 'ionic-angular';

import { Team } 		from '../../_models/team';
import { Fixture } 		from '../../_models/fixture';

import { TeamDetailsPage }	from '../team-details/team-details';

@IonicPage()
@Component({
  selector: 'page-fixture-details',
  templateUrl: 'fixture-details.html',
})
export class FixtureDetailsPage
{
	Team1 		: Team;
	Team2 		: Team;
	_Fixture 	: Fixture;

	constructor(public navCtrl: NavController, public navParams: NavParams, private modalController : ModalController, private viewController : ViewController)
	{
		this._Fixture = navParams.get("pFixture");
		this.Team1 = navParams.get("pTeam1");
		this.Team2 = navParams.get("pTeam2");

	}

	ionViewDidLoad()
	{
		console.log('ionViewDidLoad FixtureDetailsPage');
	}


	closeModal()
	{
		this.viewController.dismiss();
	}


	openModalTeam(team : Team)
	{
		const modal = this.modalController.create(TeamDetailsPage, {pTeam : team});

		modal.present();
	}

}
