import { Injectable }               from '@angular/core';
import { Http, Headers, Response }  from '@angular/http';
import { Observable }               from 'rxjs/Observable';
import 'rxjs/add/operator/map';


@Injectable()
export class PickTeamService
{
    constructor(private http : Http) { }


    saveChanges(requestInfo : any) : Observable<any>
    {
        return this.http.post('http://localhost:8080/fantasy/pickStartingXI', requestInfo, { headers : this.getHeaders(), withCredentials : true })
                        .map((response : Response) =>
                        {
                            var res = response.json();
                            console.log("TEST");
                            return { test: "Test" };
                        })
    }


    private getHeaders()
    {
        var headers = new Headers();
        headers.append('Accept', 'application/json');
        return headers;
    }
}
