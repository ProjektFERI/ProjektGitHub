import { Injectable } from '@angular/core';
import { Http, Headers, Response } from '@angular/http';
import 'rxjs/add/operator/map';
import { Observable }               from 'rxjs/Observable';

//my modules
import { Storage } from '@ionic/storage';

//classes
import { Team }     from '../../_models/team';
import { Player }     from '../../_models/player';
import { User }     from '../../_models/user';
import { APIresponse }     from '../../_models/APIresponse';
import { Fixture }     from '../../_models/fixture';






@Injectable()
export class GlobalProvider {

  //URL
  //serviceURL : string = "http://192.168.0.104:8080";
  //serviceURL : string = "http://localhost:8080";
  //serviceURL : string = "http://164.8.161.163:8080";
  //serviceURL : string = "http://192.168.1.105:8080";
  serviceURL : string = "http://164.8.161.124:8080";
  //URL

  isLoggedIn : boolean = false;
  userTeam : Team;
  userPlayers : Player[];

  public selectedTeam : Team;


  constructor(public http: Http, private storage: Storage) {
    console.log('Hello GlobalProvider Provider');
    //
    this.userTeam = new Team();
    this.userPlayers = new Player()[1];

    this.selectedTeam = new Team();
    this.selectedTeam.name = "";
  }



  login(user : User) : Observable<APIresponse>
  {
          return this.http.post( this.serviceURL + '/user/login', user, { headers: this.getHeaders(), withCredentials: true })
                      .map((response : Response) =>
                      {
                          var res = response.json();                              //server poslje response
                          if(res.Token != null)                                   //ce response vsebuje Token, je uporabnik avtenticiran
                              //localStorage.setItem("currentUser", res.Token);     //ter v localStorage zapisemo da je uporabnik prijavljen
                              this.storage.set('currentUser', res.Token);
                          console.log(res.Status);                                //TEST - zapis v konzoli
                          console.log(res);
                          return res;
                      });
  }


  fetchTeams(requestInfo : any) : Observable<Team[]>
  {
            return this.http.post( this.serviceURL + '/fantasy/teams', requestInfo, { headers : this.getHeaders(), withCredentials : true})
                            .map((response : Response) =>
                            {
                                var res = response.json();
                                console.log(res);
                                if(res.length == 0)
                                    res = null;

                                return res;
                            })
    }

    fetchPlayers(requestInfo : Team) : Observable<Player[]> //starting
    {
      return this.http.post( this.serviceURL + '/showteam/starting', requestInfo, { headers : this.getHeaders(), withCredentials : true})
                      .map((response : Response) =>
                      {
                          var res = response.json();
                          //console.log(res);
                          if(res.length == 0)
                              res = null;

                          return res; //mhm
                      })
    }

    countTodayMatches(teamID : number) : Observable<any>
  {
      return this.http.post( this.serviceURL + '/showteam/matchCount', { TeamID : teamID }, { headers : this.getHeaders(), withCredentials : true})
                        .map((response : Response) =>
                        {
                            var res = response.json();
                            console.log(res);
                            return res;
                        })
  }

  simulate(requestInfo) : Observable<any>
  {
      console.log("TEST");
      return this.http.post( this.serviceURL + '/fantasy/simulateFixture', requestInfo, { headers : this.getHeaders(), withCredentials : true})
                      .map((response : Response) =>
                      {
                          var res = response.json();
                          console.log(res);
                          return res;
                      })

  }

  getFixtures(pDate) : Observable<Fixture[]>
  {
		return this.http.post( this.serviceURL + '/fantasy/ionic/fixtures', { date : pDate }, { headers: this.getHeaders(), withCredentials: true })
			.map((response: Response) =>
			{
				var res = response.json();
				if(res == null || res.length == 0)
					return null;
				return res;
			})
  }

  getTeams(requestInfo) : Observable<Team[]>
    {
        return this.http.post( this.serviceURL + '/fantasy/fixtureTeams', requestInfo, { headers : this.getHeaders(), withCredentials : true})
			.map((response: Response) =>
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
