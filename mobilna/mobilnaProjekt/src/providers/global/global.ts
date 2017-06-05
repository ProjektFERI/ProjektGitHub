import { Injectable, EventEmitter, Output }        from '@angular/core';
import { Observable, Observer }      from 'rxjs/Rx';

/*
 * GLOBAL SERVICE - globalni service za celotno aplikacijo
 * obstaja ena instanca celotnega servisa, ta je injectana v AppComponent (app.component.ts)
 *
 * loggedIn - spremenljivka, v kateri hranimo vrednost ali je uporabnik prijavljen ali ne,
 *            "bindamo" jo na property od NavBar, v tamkajsnjem konstruktorju subscribamo na dataChange tega servisa - ko se bo spremenila vrednost spremenljivke
 *            bo sprememba vidna tudi v NavBar
 *
 * UserTeam - spremenljivka, v kateri hranimo uporabnikovo ekipo, nastavi se ob prijavi, posodablja pa v Fantasy komponentah
 *
 * UserPlayers - polje kjer se hranijo vsi igralci ki jih je izbral uporabnik v ekipo
 *
 * --v prihodnje se mogoce vec globalnih spremenljivk--
*/
export class UserFull
{
    ID : number;
    username    : string;
    password    : string;
    email       : string;
    prestige    : number;
}


export class RefObject
{
    boolValue : boolean;
}


export class Player
{
    ID              : number;
    name            : string;
    position        : string;
    club            : string;
    photo           : string;
    overall         : number;
    value           : number;
    skills          : number;
    crossing        : number;
    finishing       : number;
    heading         : number;
    short_passing   : number;
    volleys         : number;
    dribbling       : number;
    curve           : number;
    free_kicks       : number;
    long_passing    : number;
    ball_controll   : number;
    acceleration    : number;
    sprint_speed    : number;
    agility         : number;
    reactions       : number;
    balance         : number;
    shot_power      : number;
    jumping         : number;
    stamina         : number;
    strength        : number;
    long_shots      : number;
    aggression      : number;
    interceptions   : number;
    positioning     : number;
    vision          : number;
    penalties       : number;
    composure       : number;
    marking         : number;
    stand_tackle    : number;
    slide_tackle    : number;
    GK_diving       : number;
    GK_handling     : number;
    GK_kicking      : number;
    GK_positioning  : number;
    GK_reflexes     : number;
}


export class Team
{
    ID              : number;
    ID_user         : number;
    name            : string;
    budget          : number;
    value           : number;
    transfers       : number;
    formation       : string;
    is_playable     : boolean;
    gks             : number;
    defs            : number;
    mids            : number;
    fwds            : number;
    wins            : number;
    draws           : number;
    losses          : number;
    points          : number;
    goals_for       : number;
    goals_against   : number;
}

@Injectable()
export class GlobalProvider
{
    loggedIn : boolean;
    dataChange : Observable<any>;
    dataChangeObserver : Observer<any>;

    UserTeam        : Team;
    UserTeamCopy    : Team;
    UserPlayers     : Player[];
    UserPlayersCopy : Player[];

    CanUpdateTeam   : RefObject;      //ali je mozno v transfer komponenti kliknit na gumb za posodobitev ekipe

    selectedUser : UserFull;

    constructor()
    {
        this.dataChange = new Observable((observer : Observer<any>) =>
        {
            this.dataChangeObserver = observer;
        });

        this.CanUpdateTeam = new RefObject();
        this.CanUpdateTeam.boolValue = false;
    }


    //funkcija ki jo klicemo v drugih komponentah - ko hocemo spremeniti vrednost loggedIn
    updateLoggedIn(data : boolean)
    {
        this.loggedIn = data;
        this.dataChangeObserver.next(this.loggedIn);
    }


    //funkcija ki jo klicemo v drugih komponentah - ko hocemo spremeniti vrednosti uporabnikove ekipe
    updateUserTeam(data : Team)
    {
        this.UserTeam = data;
        this.dataChangeObserver.next(this.UserTeam);
    }


    //funkcija ki jo klicemo v drugih komponentah - ko ko spreminjamo seznam igralcev v uporabnikovi ekipi
    updateUserPlayers(data : Player[])
    {
        this.UserPlayers = data;
        this.dataChangeObserver.next(this.UserPlayers);
    }


    //za kreiranje kopije dobljenih igralcev iz apija
    createPlayersCopy(data : Player[])
    {
        this.UserPlayersCopy = [];
        for(var i = 0; i < data.length; i++)
            this.UserPlayersCopy.push(data[i]);
    }


    //skopiramo ekipo, rabimo to funkcijo, drugace se kopira referenca in ne vrednost
    createTeamCopy(team : Team)
    {
        this.UserTeamCopy               = new Team();
        this.UserTeamCopy.ID            = team.ID;
        this.UserTeamCopy.ID_user       = team.ID_user;
        this.UserTeamCopy.name          = team.name;
        this.UserTeamCopy.budget        = team.budget;
        this.UserTeamCopy.value         = team.value;
        this.UserTeamCopy.transfers     = team.transfers;
        this.UserTeamCopy.formation     = team.formation;
        this.UserTeamCopy.is_playable   = team.is_playable;
        this.UserTeamCopy.gks           = team.gks;
        this.UserTeamCopy.defs          = team.defs;
        this.UserTeamCopy.mids          = team.mids;
        this.UserTeamCopy.fwds          = team.fwds;
        this.UserTeamCopy.wins          = team.wins;
        this.UserTeamCopy.draws         = team.draws;
        this.UserTeamCopy.losses        = team.losses;
        this.UserTeamCopy.points        = team.points;
        this.UserTeamCopy.goals_for     = team.goals_for;
        this.UserTeamCopy.goals_against = team.goals_against;
    }


    resetChanges()
    {
        //this.UserPlayers = this.UserPlayersCopy;
        this.UserPlayers = JSON.parse(JSON.stringify(this.UserPlayersCopy));    // <- IZOGNEMO SE KOPIRANJU REFERENC! "cheat" da skopiramo polje objekotv po vrednosti
        this.UserTeam = JSON.parse(JSON.stringify(this.UserTeamCopy));
        this.CanUpdateTeam.boolValue = false;
        console.log(this.UserTeam);
    }


    //preverjanje ali je mozno posodobit ekipo, po uporabnikovih spremembah
    checkIfCanUpdate()
    {
        if(this.UserPlayers.length == 15 && this.UserTeam.gks == 2 && this.UserTeam.defs == 5 && this.UserTeam.mids == 5 && this.UserTeam.fwds == 3 &&
            this.UserTeam.budget >= 0 && this.UserTeam.value <= 350 && this.UserTeam.transfers >= 0)
            this.CanUpdateTeam.boolValue = true;
        else
            this.CanUpdateTeam.boolValue = false;
    }
}
