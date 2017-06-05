import { Component, OnInit,
    Input }                 from '@angular/core';

import { FixtureService }   from './fixture.service';

import { Fixture }          from '../../_models/fixture';
import { Team }             from '../../_models/team';

@Component({
  selector: 'app-fixture',
  templateUrl: './fixture.component.html',
  styleUrls: ['./fixture.component.css']
})
export class FixtureComponent implements OnInit
{
    @Input() _Fixture   : Fixture;

    Team1               : Team;
    Team2               : Team;

    constructor(private fixtureService : FixtureService) { }

    ngOnInit()
    {
        this.getTeamsFromFixture();
    }


    getTeamsFromFixture()
    {
        var requestInfo = { FixtureID : this._Fixture.ID };

        this.fixtureService.getTeams(requestInfo).subscribe(
            response =>
            {
                this.Team1 = response[0];
                this.Team2 = response[1];
                console.log(response);
            }
        )
    }

}
