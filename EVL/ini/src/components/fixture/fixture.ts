import { Component,
	OnInit,
	Input } 					from '@angular/core';

import { ModalController }		from 'ionic-angular';

//import { FixtureProvider } 		from '../../providers/fixture/fixture';
import { GlobalProvider } 		from '../../providers/global/global';

import { Team } 				from '../../_models/team';
import { Fixture } 				from '../../_models/fixture';

import { FixtureDetailsPage } 	from '../../pages/fixture-details/fixture-details';

@Component({
  selector: 'fixture',
  templateUrl: 'fixture.html'
})
export class FixtureComponent
{
	@Input() _Fixture   : Fixture;

    Team1               : Team;
    Team2               : Team;

    constructor(private globalProvider : GlobalProvider, private modalController : ModalController) { }

    ngOnInit()
    {
        this.getTeamsFromFixture();
    }


    getTeamsFromFixture()
    {
		var requestInfo = { FixtureID: this._Fixture.ID };

		this.globalProvider.getTeams(requestInfo).subscribe(
			response =>
			{
				this.Team1 = response[0];
				this.Team2 = response[1];
			}
		)
    }


	showFixtureDetails()
	{
		const modal = this.modalController.create(FixtureDetailsPage, {
			pTeam1: this.Team1,
			pTeam2: this.Team2,
			pFixture: this._Fixture
		});

		modal.present();
	}
}
