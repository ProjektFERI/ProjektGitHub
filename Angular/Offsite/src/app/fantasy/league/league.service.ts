import { Injectable }               from '@angular/core';
import { Http, Headers, Response }  from '@angular/http';
import { Observable }               from 'rxjs/Observable';
import 'rxjs/add/operator/map';

import {Team} from '../../_models/team';

@Injectable()
export class LeagueService {

  constructor(private http : Http) { }

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
