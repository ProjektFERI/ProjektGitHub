import { Component, OnInit,
        Input, Output,
        EventEmitter}                   from '@angular/core';

import { GlobalService }                from '../../_services/global.service';

import { Player }                       from '../../_models/player';

@Component({
  selector: 'app-player-min',
  templateUrl: './player-min.component.html',
  styleUrls: ['./player-min.component.css']
})
export class PlayerMinComponent implements OnInit
{
    @Input() _Player : Player;
    IsSelected      : boolean;

    CanSelect       : boolean;

    @Output() playerSelected = new EventEmitter();

    constructor(private globalService : GlobalService) { }

    ngOnInit()
    {
        if(this.IsPlayerInUserTeam())
            this.CanSelect = false;
        else
            this.CanSelect = true;

        /*this.globalService.dataChange.subscribe((data) =>
        {
            if(this.IsPlayerInUserTeam())
                this.CanSelect = false;
            else
                this.CanSelect = true;
        });*/


    }


    IsPlayerInUserTeam() : boolean
    {
        var UserPlayers = this.globalService.UserPlayers;
        /*if(UserPlayers.indexOf(this._Player) === -1)          //pogledamo ce je igralec izbran v uporabnikovo ekipo, preverjamo po ID ker so v polju reference
            return false;
        return true;*/

        for(var i = 0; i < UserPlayers.length; i++)
            if(UserPlayers[i].ID == this._Player.ID)
                return true;
        return false;
    }


    //primerno sprmenimo value ekipe in budgeta, glede na dodajanje/izlocanje igralca iz ekipe, posodobimo se preostale vrednosti
    select_deselect()
    {
        var UserTeam = this.globalService.UserTeam;
        if(this.CanSelect)                                                  //ce zberemo igralca
        {
            UserTeam.value += this._Player.value;                           //povecamo vrednost ekipe
            UserTeam.budget -= this._Player.value;                          //in zmanjsamo budget

            if(this._Player.position == "GK")                               //glede na poziciji povecamo stevilo izbranih igralcev na tej poziciji
                UserTeam.gks++;
            else if(this._Player.position == "DEF")
                UserTeam.defs++;
            else if(this._Player.position == "MID")
                UserTeam.mids++;
            else
                UserTeam.fwds++;

            this.globalService.UserTeam.transfers--;                        //zmanjsamo stevilo moznih transferjev
            this.globalService.UserPlayers.push(this._Player);              //dodamo igralca med izbrane igralce
        }

        else
        {                                                                   //ce odstranjujemo igralca
            UserTeam.value -= this._Player.value;                           //zmanjsamo vrednost ekipe za ceno igralca
            UserTeam.budget += this._Player.value;                          //ter povecamo budget

            if(this._Player.position == "GK")                               //spet glede na pozicijo zmanjsamo stevilo izbranih
                UserTeam.gks--;
            else if(this._Player.position == "DEF")
                UserTeam.defs--;
            else if(this._Player.position == "MID")
                UserTeam.mids--;
            else
                UserTeam.fwds--;

            this.globalService.UserTeam.transfers++;
            this.removePlayerFromList(this.globalService.UserPlayers, this._Player);        //in odstranimo igralca iz seznama izbranih
        }
        this.CanSelect = !this.CanSelect;

        this.globalService.checkIfCanUpdate();
        console.log(this.globalService.CanUpdateTeam);

        this.playerSelected.emit(true);
    }


    //iz podanega seznama igralcev odstranimo podanega igralca
    removePlayerFromList(listOfPlayers : Player[], player : Player)
    {
        for(var i = 0; i < listOfPlayers.length; i++)
            if(listOfPlayers[i].ID == player.ID)
            {
                listOfPlayers.splice(i, 1);                 //na mestu kjer imata igralca enak ID, odstranimo igralca
                return;
            }
    }

    onNotification($event)
    {
        if(this.IsPlayerInUserTeam())
            this.CanSelect = false;
        else
            this.CanSelect = true;
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
