import { Injectable }               from '@angular/core';
import { Http, Headers, Response }  from '@angular/http';
import { Observable }               from 'rxjs/Observable';
import 'rxjs/add/operator/map';

import { Team }                     from '../../_models/team';

@Injectable()
export class FixtureService
{
    constructor(private http : Http) { }

    getTeams(requestInfo) : Observable<Team[]>
    {
        return this.http.post('http://localhost:8080/fantasy/fixtureTeams', requestInfo, { headers : this.getHeaders(), withCredentials : true})
                        .map((response : Response) =>
                        {
                            var res = response.json();
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
