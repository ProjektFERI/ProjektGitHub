import { Injectable } from '@angular/core';
import { Http, Headers, Response }  from '@angular/http';
import { Observable }               from 'rxjs/Observable';
import 'rxjs/add/operator/map';

import { Player }                   from '../_models/player'; //nerabis vena
import { UserFull }               from '../_models/userFull';

@Injectable()
export class UserlistService {

  constructor(private http : Http) { }



  //klic na server, ki nam vrne usere
  fetchUsers(requestInfo : any) : Observable<UserFull[]>
  {
      return this.http.post('http://localhost:8080/userlist/users', requestInfo, { headers : this.getHeaders(), withCredentials : true})
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
