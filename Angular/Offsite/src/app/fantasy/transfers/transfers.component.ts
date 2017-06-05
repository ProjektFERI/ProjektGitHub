import { Component, OnInit,
    OnDestroy }                 from '@angular/core';
import { Router }               from '@angular/router';

import { TransfersService}      from './transfers.service';
import { GlobalService }        from '../../_services/global.service';

import { PlayerMinComponent }   from '../player-min/player-min.component';

import { Player }               from '../../_models/player';
import { Team }                 from '../../_models/team';
import { RefObject }            from '../../_models/refObject';

@Component({
  selector: 'app-transfers',
  templateUrl: './transfers.component.html',
  styleUrls: ['./transfers.component.css']
})
export class TransfersComponent implements OnInit
{
    ListOfPlayers       : Player[];                                 //seznam igralcev, ki ga prikazemo uporabniku da lahko izbira igralce
    Positions           : Position[];                               //seznam pozicij v <select>
    Options             : Option[];                                 //seznam opcij v <select>

    SelectByPosition    : string;                                   //igralci so vrnjeni po izbrani poziciji
    SortByOption        : string;                                   //igralci so sortirani po izbrani vrednosti
    SearchByName        : string;                                   //igralci se bojo iskali po vnesenem iskalnem nizu

    SelectedPlayers     : Player[];                                 //seznam igralcev, ki jih je izbral uporabnik
    UserTeam            : Team;

    CanUpdate           : RefObject;                                //ali lahko uporabnik shrani spremembe
    WasUpdated          : boolean;                                  //ali je uporabnik shranil spremembe

    recPlayers          : Player[];

    constructor(private transfersService : TransfersService, private globalService : GlobalService, private router : Router)
    {

    }

    //ob inicializaciji nastavimo default vrednosti za opcije
    ngOnInit()
    {
        this.ListOfPlayers = null;

        this.Positions = [{value : "*", content : "All players"}, {value : "GK", content : "Goalkeepers"},
                        {value : "DEF", content : "Defenders"}, {value : "MID", content : "Midfielders"},
                        {value : "FWD", content : "Forwards"}];

        this.Options = [{value : "value", content : "Value"}, {value : "overall", content : "Overall"},
                        {value : "club", content : "Club"}];

        this.SelectByPosition = "*";            //default vrne vrne vse igralce
        this.SortByOption = "value";            //default so sortirani po vrednosti

        this.updatePlayerList();                //klicemo API da dobimo igralce
        this.UserTeam = this.globalService.UserTeam;
        this.SelectedPlayers = this.globalService.UserPlayers;

        this.CanUpdate = new RefObject();
        this.CanUpdate.boolValue = this.globalService.CanUpdateTeam.boolValue;

        this.WasUpdated = false;

        this.updateRec();
    }


    //ce uporabnik spreminja ekipo in ne shrani sprememb, ekipo in igralce v globalService nastavimo na prejsnje stanje
    ngOnDestroy()
    {
        if(!this.WasUpdated)
            this.globalService.resetChanges();          //spremenimo vrednosti na stanje pred uporabnikovimi spremembami

        this.globalService.CanUpdateTeam.boolValue = false;
    }


    //spreminjanje opcij
    onChangeOption($event)
    {
        this.SortByOption = $event.target.value;
        this.updatePlayerList();
    }

    onChangePosition($event)
    {
        this.SelectByPosition = $event.target.value;
        this.updatePlayerList();
    }


    //ob kliku na gumb se seznam igralcev posodobi glede na iskalni niz
    onSearchClick()
    {
        var requestInfo = { SearchByName : this.SearchByName };
        //console.log(requestInfo.SearchByName);
        this.transfersService.fetchPlayersByName(requestInfo).subscribe(
            response =>
            {
                this.ListOfPlayers = response;
            }
        )
    }


    //klic na API ki vrne igralce glede na vnesene opcije
    updatePlayerList()
    {
        var requestInfo = { Position : this.SelectByPosition, SortOption : this.SortByOption };
        this.transfersService.fetchPlayers(requestInfo).subscribe(
            response =>
            {
                this.ListOfPlayers = response;
            }
        )
    }


    updateSelectedPlayers()
    {
        this.WasUpdated = true;

        var requestInfo = { SelectedPlayers : this.SelectedPlayers, UserTeam : this.UserTeam };
        this.transfersService.updateSelectedPlayers(requestInfo).subscribe(
            response =>
            {
                //console.log(response);
                this.router.navigate(['/fantasy/pick-team']);                   //ker po spremembi ekipe ni noben igralecv zacetni postavi, preusmerimo uporabnika na izbiro postave
            }
        )
    }


    updateRec()
    {
      //console.log("Team:");
      //console.log(this.globalService.UserTeam);
      var requestInfo = { UserTeam : this.globalService.UserTeam, SelectedPlayers : this.SelectedPlayers };
      //console.log(requestInfo); //TESTTEST
      this.transfersService.fetchRec(requestInfo).subscribe(
          response =>
          {
              this.recPlayers = response;
              //console.log("Rec:");
              //console.log(this.recPlayers);
          }
      )


    }


    handlePlayerSelected(value : any)
    {
        this.updateRec();

        this.updatePlayerList();
    }

}

/*
 * Classa za prikaz opcij v <select> tagu
*/

class Position
{
    constructor(pos : string, cont : string)
    {
        this.value = pos;
        this.content = cont;
    }
    value : string;
    content : string;
}

class Option
{
    constructor(sort_by : string, cont : string)
    {
        this.value = sort_by;
        this.content = cont;
    }
    value : string;
    content : string;
}
