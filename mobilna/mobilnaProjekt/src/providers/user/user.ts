import { Injectable } from '@angular/core';
import { Http, Headers, Response } from '@angular/http';
import { Observable } from 'rxjs/Observable';
import 'rxjs/add/operator/map';

import { User } from '../../_models/user';
import { APIresponse } from '../../_models/APIresponse';



/*
  Generated class for the SignUpProvider provider.

  See https://angular.io/docs/ts/latest/guide/dependency-injection.html
  for more info on providers and Angular 2 DI.
*/


@Injectable()
export class UserProvider {
  public baseUrl: string = 'http://localhost/8080';

  constructor(private http: Http) {
    console.log('Hello SignUpProvider Provider');
  }

  login(user: User): Observable<APIresponse>
  {
    return this.http.post(this.baseUrl + '/user/login', user, { headers: this.getHeaders(), withCredentials: true })
            .map((response : Response) =>
            {
                let res = response.json();                              //server poslje response
                if(res.Token != null)                                   //ce response vsebuje Token, je uporabnik avtenticiran
                    localStorage.setItem("currentUser", res.Token);     //ter v localStorage zapisemo da je uporabnik prijavljen
                console.log(res.Status);                                //TEST - zapis v konzoli
                console.log(res);
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
