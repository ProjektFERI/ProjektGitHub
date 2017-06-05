import { Component, OnInit }    from '@angular/core';
import { Router }               from '@angular/router';

import { GlobalService }        from '../../_services/global.service';
import { PickTeamService }      from './pick-team.service';

import { Player }               from '../../_models/player';
import { Team }                 from '../../_models/team';

@Component({
  selector: 'app-pick-team',
  templateUrl: './pick-team.component.html',
  styleUrls: ['./pick-team.component.css']
})
export class PickTeamComponent implements OnInit
{
    Formations          : string[];                  //seznam formacij ki so na izbiro

    SelectedPlayers     : Player[];                 //seznam igralcev ki jih ima uporabnik v ekipi
    UserTeam            : Team;                     //uporabnikova ekipa

    SelectedPlayer      : Player;                   //igralec katerega podrobnosti prikazemo, ce je izbran

    SelectedFormation   : string[];                 //polje ki nam predstavlja koliko igralcev je v obrambi, centru, napadu
    SelectedGKs         : number;
    SelectedDefs        : number;
    SelectedMids        : number;
    SelectedFwds        : number;

    StartingXIplayers   : boolean[];                //vrednosti ki predstavljajo ali je uorabnik izbral igralca v zacetno postavo, ker se vrstni red igralcov ne spreminja
                                                    //tocno vemo da je prva vrednost za igralca v SelectedPlayers[0], druga v SelectedPlayers[1] ...

    CanUpdateTeam       : boolean;                  //ce je uporabnik izbral 11 igralcov

    constructor(private globalService : GlobalService, private pickTeamService : PickTeamService, private router : Router)
    { }

    ngOnInit()
    {
        this.Formations = [ "4-4-2", "4-3-3", "4-5-1", "3-5-2", "5-3-2", "5-4-1" ];

        this.SelectedPlayers = this.globalService.UserPlayers;
        this.UserTeam = this.globalService.UserTeam;

        this.SelectedPlayer = null;

        this.StartingXIplayers = new Array<boolean>();
        for(var i = 0; i < this.SelectedPlayers.length; i++)
            this.StartingXIplayers[i] = false;

        this.SelectedFormation = this.UserTeam.formation.split("-");            //splitamo formation da dobimo array npr [0]=4 [1]= 4 [2]=2
        this.SelectedGKs = 0;
        this.SelectedDefs = 0;
        this.SelectedMids = 0;
        this.SelectedFwds = 0;
    }


    //ob spremembi opcije v <select>
    onChangeFormation($event)
    {
        this.UserTeam.formation = $event.target.value;

        this.SelectedFormation = this.UserTeam.formation.split("-");

        this.checkIfCanUpdate();
    }


    //spremenimo izbranega igralca - ta bo prikazan na desni strani
    onPlayerSelect(player : Player)
    {
        this.SelectedPlayer = player;
    }


    //ob spremembi checkboxa
    onToStartingXI(player : Player)
    {
        var index = this.SelectedPlayers.indexOf(player);
        this.StartingXIplayers[index] = !this.StartingXIplayers[index];         //na indexu igralca spremenimo in_starting_XI vrednost


        this.changeCounter(player);

        this.checkIfCanUpdate();
    }


    //se klice ob vsaki spremembi checkboxa, posodobi vrednost, ali lahko uporabnik shrani spremembe
    checkIfCanUpdate()
    {
        var count = 0;
        for(var i = 0; i < this.StartingXIplayers.length; i++)
            if(this.StartingXIplayers[i])
                count++;


        //ce je izbranih 11 igralcev, in so izbrani pravilno glede na formacijo
        if(count == 11)
        {
            if(this.SelectedGKs == 1 && this.SelectedDefs.toString() == this.SelectedFormation[0] &&
                this.SelectedMids.toString() == this.SelectedFormation[1] && this.SelectedFwds.toString() == this.SelectedFormation[2])
                this.CanUpdateTeam = true;
            else
                this.CanUpdateTeam = false;
        }
        else
            this.CanUpdateTeam = false;
    }


    onSaveChanges()
    {
        var requestInfo = { SelectedPlayers : this.SelectedPlayers, StartingXIplayers : this.StartingXIplayers,
                            teamID : this.UserTeam.ID , formation : this.UserTeam.formation};

        this.pickTeamService.saveChanges(requestInfo).subscribe(
            response =>
            {
                console.log("TU");
                this.router.navigate(['/fantasy/league']);
            }
        )
    }


    //helper function, poveca oz. pomanjsa stevilo izbranih na doloceni poziciji
    changeCounter(player : Player)
    {
        var index = this.SelectedPlayers.indexOf(player);
        if(this.StartingXIplayers[index])
        {
            if(player.position == "GK")
                this.SelectedGKs++;
            else if(player.position == "DEF")
                this.SelectedDefs++;
            else if(player.position == "MID")
                this.SelectedMids++;
            else
                this.SelectedFwds++;
        }
        else
        {
            if(player.position == "GK")
                this.SelectedGKs--;
            else if(player.position == "DEF")
                this.SelectedDefs--;
            else if(player.position == "MID")
                this.SelectedMids--;
            else
                this.SelectedFwds--;
        }
    }


    //vrne barvo glede na stevilo
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
