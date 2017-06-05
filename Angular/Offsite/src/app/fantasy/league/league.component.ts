import { Component, OnInit } from '@angular/core';

import {LeagueService} from './league.service';

import {Team} from '../../_models/team';

@Component({
  selector: 'app-league',
  templateUrl: './league.component.html',
  styleUrls: ['./league.component.css']
})
export class LeagueComponent implements OnInit {

allTeams : Team[];

  constructor(private leagueService : LeagueService) { }

  ngOnInit() {
    this.LoadTeams();
  }

  LoadTeams()
  {

    this.leagueService.fetchTeams(this.allTeams).subscribe(
      response =>
      {

        this.allTeams = response;
        console.log(this.allTeams);

      }
    )
  }


}
