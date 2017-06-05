import { Component, OnInit } from '@angular/core';

import {Team} from '../_models/team';
import {UserFull} from '../_models/userFull';
import {Player} from '../_models/player';

import {ShowteamService} from './showteam.service';
import { GlobalService } from '../_services/global.service';

@Component({
  selector: 'app-showteam',
  templateUrl: './showteam.component.html',
  styleUrls: ['./showteam.component.css']
})
export class ShowteamComponent implements OnInit {

  selectedTeam : Team;
  selectedPlayers : Player[];
  startingPlayers : Player[];
  userStartingPlayers : Player[];
  FixtureResult : any;

  CanPlay       : boolean;

  SelectedPlayer : Player;

  constructor(private showteamService : ShowteamService, private globalService : GlobalService)
  {
      this.selectedTeam = new Team();
  }

  ngOnInit()
  {
    this.onLoadTeam();
    //this.onLoadPlayers();

    this.showteamService.fetchUserStartingXI(this.globalService.UserTeam.ID).subscribe(
        response =>
        {
            this.userStartingPlayers = response;

            this.updateCanPlay();
        }
    )

    this.FixtureResult = {};
    this.FixtureResult.Status = "Loading";
    this.FixtureResult.Result = "Loading";

  }

  onLoadTeam()
  {
      //var requestInfo = { UserFull : this.globalService.selectedUser };
      //console.log();
      this.showteamService.fetchTeam(this.globalService.selectedUser).subscribe(
          response =>
          {
              //console.log(this.selectedTeam);
              this.selectedTeam = response;
             // console.log(this.selectedTeam);
              //console.log(this.selectedTeam.name);
              //next
              this.onLoadPlayers();
              this.onLoadStarting();
          }
      )
  }

  onLoadPlayers()
  {

      //console.log();
      this.showteamService.fetchPlayers(this.selectedTeam).subscribe(
          response =>
          {

              this.selectedPlayers = response;
              //console.log(this.selectedPlayers);

          }
      )
  }

  onLoadStarting()
  {

      //console.log();
      this.showteamService.fetchStarting(this.selectedTeam).subscribe(
          response =>
          {

              this.startingPlayers = response;
             // console.log(this.startingPlayers);

          }
      )
  }

  simulate()
  {
      /*console.log(this.globalService.UserTeam);
      console.log(this.selectedTeam);
      console.log(this.userStartingPlayers);
      console.log(this.startingPlayers);*/
      var requestInfo = { UserTeam : this.globalService.UserTeam,
                          OpponentTeam : this.selectedTeam,
                          UserPlayers : this.userStartingPlayers,
                          OpponentPlayers : this.startingPlayers
                      };
      this.showteamService.simulate(requestInfo).subscribe(
          response =>
          {
              this.FixtureResult = response;
          }
      )

      this.updateCanPlay();
      //console.log("CAN PLAY:" + this.CanPlay);
  }

    updateCanPlay()
    {
        //console.log(this.globalService.UserTeam.is_playable && this.selectedTeam.is_playable);
        if(this.globalService.UserTeam.is_playable && this.selectedTeam.is_playable)
        {
            this.showteamService.countTodayMatches(this.globalService.UserTeam.ID).subscribe(
                response =>
                {
                    var noOfMatchesToday = response;
                    //console.log(noOfMatchesToday);
                    if(noOfMatchesToday < 5)
                        this.CanPlay = true;
                    else
                        this.CanPlay = false;
                }
            )
        }
    }


    onPlayerSelect(player : Player)
    {
        this.SelectedPlayer = player;
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
