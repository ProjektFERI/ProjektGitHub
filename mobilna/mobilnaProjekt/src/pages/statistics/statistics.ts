import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { Http, HttpModule, Headers, Response }  from '@angular/http';
import { Observable }  from 'rxjs/Observable';
import { UserProvider, Team, Player } from '../../providers/user/user';

/**
 * Generated class for the StatisticsPage page.
 *
 * See http://ionicframework.com/docs/components/#navigation for more info
 * on Ionic pages and navigation.
 */
@IonicPage()
@Component({
  selector: 'page-statistics',
  templateUrl: 'statistics.html',
})
export class StatisticsPage {

  constructor(public http: Http, public navCtrl: NavController, public navParams: NavParams) {
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad StatisticsPage');
  }
  public baseUrl: string = 'http://localhost/8080';


      getMostValuableTeam() : Observable<Team>
      {
          return this.http.get(this.baseUrl + '/statistics/mostValuableTeam', { headers : this.getHeaders(), withCredentials : true })
                          .map((response : Response) =>
                          {
                              let res = response.json();
                              console.log("MostValuableTeam");
                              console.log(res);
                              return res;
                          })
      }

      getMostPickedPlayer() : Observable<Player>
      {
          return this.http.get(this.baseUrl + 'statistics/mostPickedPlayer', { headers : this.getHeaders(), withCredentials : true })
                          .map((response : Response) =>
                          {
                              let res = response.json();
                              console.log("MostPickedPlayer");
                              return res[0];
                          })
      }

      getMostUsedFormation() : Observable<string>
      {
          return this.http.get(this.baseUrl + 'statistics/mostUsedFormation', { headers : this.getHeaders(), withCredentials : true })
                          .map((response : Response) =>
                          {
                              let res = response.json();
                              console.log("MostUsedFormation");
                              return res;
                          })
      }

      getTeamWithMostWins() : Observable<Team>
      {
          return this.http.get(this.baseUrl + 'statistics/mostWins', { headers : this.getHeaders(), withCredentials : true })
                          .map((response : Response) =>
                          {
                              let res = response.json();
                              console.log("MostWins");
                              return res;
                          })
      }

      getTeamWithMostDraws() : Observable<Team>
      {
          return this.http.get(this.baseUrl + 'statistics/mostDraws', { headers : this.getHeaders(), withCredentials : true })
                          .map((response : Response) =>
                          {
                              let res = response.json();
                              console.log("MostDraws");
                              return res;
                          })
      }

      getTeamWithMostLosses() : Observable<Team>
      {
          return this.http.get(this.baseUrl + 'statistics/mostLosses', { headers : this.getHeaders(), withCredentials : true })
                          .map((response : Response) =>
                          {
                              let res = response.json();
                              console.log("MostLosses");
                              return res;
                          })
      }

      getMostGoalsScored() : Observable<Team>
      {
          return this.http.get(this.baseUrl + 'statistics/mostGoalsScored', { headers : this.getHeaders(), withCredentials : true })
                          .map((response : Response) =>
                          {
                              let res = response.json();
                              console.log("MostGoalsScored");
                              return res;
                          })
      }

      getMostGoalsConceded() : Observable<Team>
      {
          return this.http.get(this.baseUrl + 'statistics/mostGoalsConceded', { headers : this.getHeaders(), withCredentials : true })
                          .map((response : Response) =>
                          {
                              let res = response.json();
                              console.log("MostGoalsConceded");
                              return res;
                          })
      }

      getLeastGoalsScored() : Observable<Team>
      {
          return this.http.get(this.baseUrl + 'statistics/leastGoalsScored', { headers : this.getHeaders(), withCredentials : true })
                          .map((response : Response) =>
                          {
                              let res = response.json();
                              console.log("LeastGoalsScored");
                              return res;
                          })
      }

      getLeastGoalsConceded() : Observable<Team>
      {
          return this.http.get(this.baseUrl + 'statistics/leastGoalsConceded', { headers : this.getHeaders(), withCredentials : true })
                          .map((response : Response) =>
                          {
                              let res = response.json();
                              console.log("LeastGoalsConceded");
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
