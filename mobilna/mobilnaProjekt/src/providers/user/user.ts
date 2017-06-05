import { Injectable } from '@angular/core';
import { Http, Headers, Response } from '@angular/http';
import { Observable } from 'rxjs/Observable';
import 'rxjs/add/operator/map';

/*
  Generated class for the SignUpProvider provider.

  See https://angular.io/docs/ts/latest/guide/dependency-injection.html
  for more info on providers and Angular 2 DI.
*/
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

export class User{
  ID : number;
  username : string;
  password : string;
  email : string;
}

export class APIresponse
{
    StatusCode  : number;
    Status      : string;
    Token       : string;
    UserTeam    : Team;
    Players     : Player[];
}



@Injectable()
export class UserProvider {
  public baseUrl: string = 'http://localhost/8080';

  constructor(public http: Http) {
    console.log('Hello SignUpProvider Provider');
  }

  login(user: User): Observable<APIresponse>{
    return this.http.post(this.baseUrl + '/user/login', user, { headers: this.getHeaders(), withCredentials: true })
            .map((response : Response) =>
            {
                let res = response.json();                              //server poslje response
                if(res.Token != null)                                   //ce response vsebuje Token, je uporabnik avtenticiran
                    localStorage.setItem("currentUser", res.Token);     //ter v localStorage zapisemo da je uporabnik prijavljen
                return res;
            });
  }

  private getHeaders()
  {
    let headers = new Headers();
    headers.append('Accept', 'application/json');
    return headers;
  }

}
