import { Injectable } from '@angular/core';
import { Http, Headers, Response } from '@angular/http';
import { Observable } from 'rxjs/Observable';
import 'rxjs/add/operator/map';

import {Team} from '../../_models/team';

/*
  Generated class for the LeagueProvider provider.

  See https://angular.io/docs/ts/latest/guide/dependency-injection.html
  for more info on providers and Angular 2 DI.
*/
@Injectable()
export class LeagueProvider {
  //public stalniUrl: string = "http://89.212.174.86";
  constructor(public http: Http) {
    console.log('Hello LeagueProvider Provider');
  }

  fetchTeams(requestInfo : any) : Observable<Team[]>
  {
      return this.http.post('http://localhost:8080/fantasy/teams', requestInfo, { headers : this.getHeaders(), withCredentials : true})
                      .map((response : Response) =>
                      {
                          var res = response.json();
                          console.log(res);
                          if(res.length == 0)
                              res = null;

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
