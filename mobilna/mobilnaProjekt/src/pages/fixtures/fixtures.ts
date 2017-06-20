import { Component } 		from '@angular/core';
import { IonicPage,
	NavController,
	NavParams } 			from 'ionic-angular';

//import { FixturesProvider } from '../../providers/fixtures/fixtures';
import { GlobalProvider } from '../../providers/global/global';

import { Fixture } from '../../_models/fixture';

@IonicPage()
@Component({
  selector: 'page-fixtures',
  templateUrl: 'fixtures.html',
})
export class FixturesPage
{
	Fixtures : Fixture[];

	SearchDate : any;

	constructor(public navCtrl: NavController, public navParams: NavParams, private globalProvider : GlobalProvider){}

	ionViewDidLoad()
	{
		console.log('ionViewDidLoad FixturesPage');

		this.SearchDate = null;
		this.getFixtures();
	}


	getFixtures()
	{
		this.globalProvider.getFixtures(this.SearchDate).subscribe(
			response =>
			{
				this.Fixtures = response;
			}
		)
	}

}
