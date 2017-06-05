import { Injectable }               from '@angular/core';
import { Http, Headers, Response }  from '@angular/http';
import { Observable }               from 'rxjs/Observable';
import 'rxjs/add/operator/map';

import { Player }                   from '../../_models/player';

@Injectable()
export class TransfersService
{
    constructor(private http : Http) { }


    //klic na server, ki nam vrne vse igralce glede na izbrane opcije
    fetchPlayers(requestInfo : any) : Observable<Player[]>
    {
        return this.http.post('http://localhost:8080/fantasy/players', requestInfo, { headers : this.getHeaders(), withCredentials : true})
                        .map((response : Response) =>
                        {
                            var res = response.json();
                            if(res.length == 0)
                                res = null;

                            return res;
                        })
    }


    //klic na server, ki nam vrne vse igralce glede na vpisan niz
    fetchPlayersByName(requestInfo : any) : Observable<Player[]>
    {
        return this.http.post('http://localhost:8080/fantasy/players', requestInfo, { headers : this.getHeaders(), withCredentials : true})
                        .map((response : Response) =>
                        {
                            var res = response.json();
                            if(res == null || res.length == 0)                  //...verjetno nepotrebno...
                                res = null;

                            return res;
                        })
    }


    //klic na server, klicemo api za posodobitev uporabnikove ekipe oz. izbranih igralcev
    updateSelectedPlayers(requestInfo : any) : Observable<any>
    {
        return this.http.post('http://localhost:8080/fantasy/updateSelectedPlayers', requestInfo, { headers : this.getHeaders(), withCredentials : true})
                        .map((response : Response) =>
                        {
                            var res = response.json();

                            console.log(res);
                            return res;
                        })
    }


    fetchRec(requestInfo : any) : Observable<Player[]>
    {
        return this.http.post('http://localhost:8080/fantasy/rec', requestInfo, { headers : this.getHeaders(), withCredentials : true})
                        .map((response : Response) =>
                        {
                            var res = response.json();
                            //if(res.length == 0)
                            //    res = null;

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
