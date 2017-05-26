import { Component } from '@angular/core';
import { AppService } from './app.service';

import { Team, tPlayer, Player } from './app.classes';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css'],
  providers: [ AppService ]
})
export class AppComponent
{
    teams : Team[];
    players : tPlayer[];
    selectedPlayer : Player;

    sql : string;
    sqls : string[];

    constructor(private appService : AppService)
    {

    }

    parse()
    {
        /*this.appService.loadData("https://cors-anywhere.herokuapp.com/https://sofifa.com/league/13");

        this.teams = this.appService.teams;*/


        /*this.appService.loadData("https://cors-anywhere.herokuapp.com/https://sofifa.com/team/11");

        this.players = this.appService.players;*/


        //this.appService.loadData("https://cors-anywhere.herokuapp.com/https://sofifa.com/player/195864");

        this.appService.loadDataTeams("https://cors-anywhere.herokuapp.com/https://sofifa.com/league/13")
        this.teams = this.appService.teams;

        console.log(this.teams);

    }

    onSelect(team : Team)
    {
        this.appService.players = new Array();
        //alert(team.Link);

        this.appService.loadDataPlayers(team.Link);
        this.players = this.appService.players;
    }


    onSelectPlayer(player : tPlayer)
    {
        this.appService.loadDataPlayer(player.Link);
        this.selectedPlayer = this.appService.player;               //dela ko stisnes drugic - ker je asinhrono...
        console.log(this.appService.sql);
    }


    parseTeams()
    {
        this.appService.loadDataTeams("https://cors-anywhere.herokuapp.com/https://sofifa.com/league/13");
        this.teams = this.appService.teams;
    }

    parsePlayers()
    {
        for(var i = 0; i < this.teams.length; i++)
        {
            this.appService.loadDataPlayers(this.teams[i].Link);
        }
        this.players = this.appService.players;
    }

    parseEachPlayer()
    {
        for(var i = 0; i < this.players.length; i++)
        {
            this.appService.loadDataPlayer(this.players[i].Link);
            console.log("player" + i);
        }

        this.sqls = this.appService.sql;
    }
}
