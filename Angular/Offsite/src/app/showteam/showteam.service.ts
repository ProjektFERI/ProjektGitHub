import { Injectable } from '@angular/core';
import { Http, Headers, Response }  from '@angular/http';
import { Observable }               from 'rxjs/Observable';
import 'rxjs/add/operator/map';

import {Team} from '../_models/team';
import {UserFull} from '../_models/userFull';
import {Player} from '../_models/player';

@Injectable()
export class ShowteamService {

  constructor(private http : Http) { }


  fetchTeam(requestInfo : UserFull) : Observable<Team>
  {
      return this.http.post('http://localhost:8080/showteam/team', requestInfo, { headers : this.getHeaders(), withCredentials : true})
                      .map((response : Response) =>
                      {
                          var res = response.json();
                          //console.log(res);
                          if(res.length == 0)
                              res = null;

                          return res[0]; //nevem zakaj morem dat index...
                      })
  }

  fetchPlayers(requestInfo : Team) : Observable<Player[]>
  {
      return this.http.post('http://localhost:8080/showteam/players', requestInfo, { headers : this.getHeaders(), withCredentials : true})
                      .map((response : Response) =>
                      {
                          var res = response.json();
                          //console.log(res);
                          if(res.length == 0)
                              res = null;

                          return res; //mhm
                      })
  }

  fetchStarting(requestInfo : Team) : Observable<Player[]>
  {
      return this.http.post('http://localhost:8080/showteam/starting', requestInfo, { headers : this.getHeaders(), withCredentials : true})
                      .map((response : Response) =>
                      {
                          var res = response.json();
                          //console.log(res);
                          if(res.length == 0)
                              res = null;

                          return res; //mhm
                      })
  }


  fetchUserStartingXI(idTeam : number) : Observable<any>
  {
      return this.http.post('http://localhost:8080/showteam/userStartingXI', { teamID : idTeam }, { headers : this.getHeaders(), withCredentials : true})
                        .map((response : Response) =>
                        {
                            var res = response.json();
                            return res;
                        });
  }


  simulate(requestInfo) : Observable<any>
  {
      console.log("TEST");
      return this.http.post('http://localhost:8080/fantasy/simulateFixture', requestInfo, { headers : this.getHeaders(), withCredentials : true})
                      .map((response : Response) =>
                      {
                          var res = response.json();
                          console.log(res);
                          return res;
                      })

  }


  countTodayMatches(teamID : number) : Observable<any>
  {
      return this.http.post('http://localhost:8080/showteam/matchCount', { TeamID : teamID }, { headers : this.getHeaders(), withCredentials : true})
                        .map((response : Response) =>
                        {
                            var res = response.json();
                            console.log(res);
                            return res;
                        })
  }


  private getHeaders()
  {
      var headers = new Headers();
      headers.append('Accept', 'application/json');
      return headers;
  }

}
