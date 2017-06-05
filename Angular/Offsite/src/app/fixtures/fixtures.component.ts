import { Component, OnInit,
            Input }             from '@angular/core';

import { FixturesService }      from './fixtures.service';

import { Fixture }              from '../_models/fixture';

@Component({
  selector: 'app-fixtures',
  templateUrl: './fixtures.component.html',
  styleUrls: ['./fixtures.component.css']
})
export class FixturesComponent implements OnInit
{
    Fixtures : Fixture[];

    constructor(private fixturesService : FixturesService) { }

    ngOnInit()
    {
        this.getFixtures();
    }


    getFixtures()
    {
        this.fixturesService.getFixtures().subscribe(
            response =>
            {
                this.Fixtures = response;
            }
        )
    }

}
