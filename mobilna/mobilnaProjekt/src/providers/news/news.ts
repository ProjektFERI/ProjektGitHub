import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import 'rxjs/add/operator/map';
//import * as htmlparser from 'htmlparser2';
//import { News } from '../../_models/news'


@Injectable()
export class NewsProvider {
  http: any;
	baseUrl: String;

  constructor(http: Http) {
    this.http = http;
    this.baseUrl = "https://cors-anywhere.herokuapp.com/https://www.reddit.com/r/football";
    console.log('Hello NewsProvider Provider');
  }

  getPosts(limit){
    return this.http.get(this.baseUrl + '/.json?limit='+limit)
  	.map(res => res.json());
  }

/*
  loadData(){
      this.content = [];
      this.url = 'https://cors-anywhere.herokuapp.com/http://www.skysports.com/football/news';
      this.http.get(this.url)
    	    .map(res => res.text())
    	    .subscribe(
    	      data => this.htmldata = data,
    	      err => this.logError(err),
    	      () => this.parsingData(this.htmldata)
        );

    	return this.content;//JSON.stringify(this.cont);
    	}

      parsingData(htmltext){
        var startDiv = 0;
        var startDivA = 0;
        var startDivImg = 0;
        var aImg = 0;

        var startDivBOD = 0;
        var startH4 = 0;
        var startH4T = 0;
        var news = new News();

        var parser = new htmlparser.Parser({
          onopentag: (name, atributes) =>{
            if(name === "div"){
              startDiv ++;
            }
            else if(name === "a" && atributes != null && startDiv === 1){
              console.log(atributes.href);
            }
          }
        }, {decodeEntities: true}
      );
      parser.write(htmltext);
    parser.end();
    ;
    return this.content;
    }

    logError(err) {
      console.error('There was an error: ' + err);
    }
    */
}
