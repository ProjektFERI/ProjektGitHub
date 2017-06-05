import { Injectable }               from '@angular/core';
import { Http, Headers, Response }  from '@angular/http';
import { Observable }               from 'rxjs/Observable';
import 'rxjs/add/operator/map';

import { Fixture }                  from '../_models/fixture';

@Injectable()
export class FixturesService
{
    constructor(private http : Http) { }


    getFixtures() : Observable<Fixture[]>
    {
        return this.http.get('http://localhost:8080/fantasy/fixtures', { headers : this.getHeaders(), withCredentials : true})
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
