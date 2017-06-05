import { Component, OnInit }    from '@angular/core';

import { Team }                 from '../../_models/team';
import { Player }               from '../../_models/player';

import { StatisticsService }    from './statistics.service';

@Component({
  selector: 'app-statistics',
  templateUrl: './statistics.component.html',
  styleUrls: ['./statistics.component.css']
})
export class StatisticsComponent implements OnInit
{
    MostValuableTeam    : Team;
    MostPickedPlayer    : Player;
    SelectedPlayer      : Player;
    MostUsedFormation   : string;
    MostWins            : Team;
    MostDraws           : Team;
    MostLosses          : Team;
    MostGoalsScored     : Team;
    MostGoalsConceded   : Team;
    LeastGoalsScored    : Team;
    LeastGoalsConceded  : Team;



    constructor(private statisticsService : StatisticsService) { }

    ngOnInit()
    {
        this.statisticsService.getMostValuableTeam().subscribe(
            response =>
            {
                this.MostValuableTeam = response;
            }
        )
        this.statisticsService.getMostPickedPlayer().subscribe(
            response =>
            {
                this.MostPickedPlayer = response;
                this.SelectedPlayer = response;
            }
        )
        this.statisticsService.getMostUsedFormation().subscribe(
            response =>
            {
                this.MostUsedFormation = response;
            }
        )
        this.statisticsService.getTeamWithMostWins().subscribe(
            response =>
            {
                this.MostWins = response;
            }
        )
        this.statisticsService.getTeamWithMostDraws().subscribe(
            response =>
            {
                this.MostDraws = response;
            }
        )
        this.statisticsService.getTeamWithMostLosses().subscribe(
            response =>
            {
                this.MostLosses = response;
            }
        )
        this.statisticsService.getMostGoalsScored().subscribe(
            response =>
            {
                this.MostGoalsScored = response;
            }
        )
        this.statisticsService.getMostGoalsConceded().subscribe(
            response =>
            {
                this.MostGoalsConceded = response;
            }
        )
        this.statisticsService.getLeastGoalsScored().subscribe(
            response =>
            {
                this.LeastGoalsScored = response;
            }
        )
        this.statisticsService.getLeastGoalsConceded().subscribe(
            response =>
            {
                this.LeastGoalsConceded = response;
            }
        )
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
