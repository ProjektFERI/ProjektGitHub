import { Injectable }               from '@angular/core';
import { Http, Headers, Response }  from '@angular/http';
import { Observable }               from 'rxjs/Observable';
import 'rxjs/add/operator/map';

import { Team }						from '../../_models/team';
import { Player }					from '../../_models/player';

@Injectable()
export class StatisticsProvider
{

	//URL
  //serviceURL : string = "http://192.168.0.104:8080";
  //serviceURL : string = "http://localhost:8080";
  //serviceURL : string = "http://164.8.161.163:8080";
  //serviceURL : string = "http://192.168.1.105:8080";
  serviceURL : string = "http://164.8.161.124:8080";
  //URL

	constructor(public http: Http)
	{
		console.log('Hello StatisticsProvider Provider');
	}


	getMostValuableTeam() : Observable<Team>
    {
        return this.http.get( this.serviceURL + '/statistics/mostValuableTeam', { headers : this.getHeaders(), withCredentials : true })
                        .map((response : Response) =>
                        {
                            var res = response.json();
                            /*console.log("MostValuableTeam");
                            console.log(res);*/
                            return res;
                        })
    }

    getMostPickedPlayer() : Observable<Player>
    {
        return this.http.get( this.serviceURL + '/statistics/mostPickedPlayer', { headers : this.getHeaders(), withCredentials : true })
                        .map((response : Response) =>
                        {
                            var res = response.json();
                            //console.log("MostPickedPlayer");
                            return res[0];
                        })
    }

    getMostUsedFormation() : Observable<string>
    {
        return this.http.get( this.serviceURL + '/statistics/mostUsedFormation', { headers : this.getHeaders(), withCredentials : true })
                        .map((response : Response) =>
                        {
                            var res = response.json();
                            //console.log("MostUsedFormation");
                            return res;
                        })
    }

    getTeamWithMostWins() : Observable<Team>
    {
        return this.http.get( this.serviceURL + '/statistics/mostWins', { headers : this.getHeaders(), withCredentials : true })
                        .map((response : Response) =>
                        {
                            var res = response.json();
                            //console.log("MostWins");
                            return res;
                        })
    }

    getTeamWithMostDraws() : Observable<Team>
    {
        return this.http.get( this.serviceURL + '/statistics/mostDraws', { headers : this.getHeaders(), withCredentials : true })
                        .map((response : Response) =>
                        {
                            var res = response.json();
                            //console.log("MostDraws");
                            return res;
                        })
    }

    getTeamWithMostLosses() : Observable<Team>
    {
        return this.http.get( this.serviceURL + '/statistics/mostLosses', { headers : this.getHeaders(), withCredentials : true })
                        .map((response : Response) =>
                        {
                            var res = response.json();
                            //console.log("MostLosses");
                            return res;
                        })
    }

    getMostGoalsScored() : Observable<Team>
    {
        return this.http.get( this.serviceURL + '/statistics/mostGoalsScored', { headers : this.getHeaders(), withCredentials : true })
                        .map((response : Response) =>
                        {
                            var res = response.json();
                            //console.log("MostGoalsScored");
                            return res;
                        })
    }

    getMostGoalsConceded() : Observable<Team>
    {
        return this.http.get( this.serviceURL + '/statistics/mostGoalsConceded', { headers : this.getHeaders(), withCredentials : true })
                        .map((response : Response) =>
                        {
                            var res = response.json();
                            //console.log("MostGoalsConceded");
                            return res;
                        })
    }

    getLeastGoalsScored() : Observable<Team>
    {
        return this.http.get( this.serviceURL + '/statistics/leastGoalsScored', { headers : this.getHeaders(), withCredentials : true })
                        .map((response : Response) =>
                        {
                            var res = response.json();
                            //console.log("LeastGoalsScored");
                            return res;
                        })
    }

    getLeastGoalsConceded() : Observable<Team>
    {
        return this.http.get( this.serviceURL + '/statistics/leastGoalsConceded', { headers : this.getHeaders(), withCredentials : true })
                        .map((response : Response) =>
                        {
                            var res = response.json();
                            //console.log("LeastGoalsConceded");
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
