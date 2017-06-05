import { Injectable }               from '@angular/core';
import { Http, Headers, Response }  from '@angular/http';
import { Observable }               from 'rxjs/Observable';
import 'rxjs/add/operator/map';

import { User }                     from '../_models/user';
import { APIresponse }              from '../_models/APIresponse';

@Injectable()
export class AuthenticationService
{
    constructor(private http : Http) { }

    //na server IP/user/login se preko POST poslje vnesen username in geslo, na serveru se preveri avtentikacija
    login(user : User) : Observable<APIresponse>
    {
        return this.http.post('http://localhost:8080/user/login', user, { headers: this.getHeaders(), withCredentials: true })
                    .map((response : Response) =>
                    {
                        var res = response.json();                              //server poslje response
                        if(res.Token != null)                                   //ce response vsebuje Token, je uporabnik avtenticiran
                            localStorage.setItem("currentUser", res.Token);     //ter v localStorage zapisemo da je uporabnik prijavljen
                        console.log(res.Status);                                //TEST - zapis v konzoli
                        console.log(res);
                        return res;
                    });
    }

    //iz localStorage pobrisemo vpisanega uporabnika
    logout()
    {
        localStorage.removeItem("currentUser");
    }


    signUp(user : User) : Observable<APIresponse>
    {
        return this.http.post('http://localhost:8080/user/sign-up', user, { headers: this.getHeaders(), withCredentials: true })
                    .map((response : Response) =>
                    {
                        var res = response.json();
                        console.log(res.Status);                                //TEST - zapis v konzoli
                        return res;
                    });
    }


    private getHeaders()
    {
        var headers = new Headers();
        headers.append('Accept', 'application/json');
        return headers;
    }
}
