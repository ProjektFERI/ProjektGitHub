import { Injectable }               from '@angular/core';
import { Http, Headers, Response }  from '@angular/http';
import { Observable }               from 'rxjs/Observable';
import 'rxjs/add/operator/map';

import { Player }					from '../../_models/player';

@Injectable()
export class TeamDetailsProvider {

	constructor(public http: Http)
	{
		console.log('Hello TeamDetailsProvider Provider');
	}


	getPlayersOfTeam(teamID : number) : Observable<Player[]>
	{
		return this.http.post('http://localhost:8080/fantasy/ionic/playersOfTeam', { TeamID : teamID }, { headers : this.getHeaders(), withCredentials : true })
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
