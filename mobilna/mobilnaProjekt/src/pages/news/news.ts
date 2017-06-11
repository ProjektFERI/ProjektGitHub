import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { NewsProvider } from '../../providers/news/news';
import { NewsEnaPage } from '../news-ena/news-ena';
/**
 * Generated class for the NewsPage page.
 *
 * See http://ionicframework.com/docs/components/#navigation for more info
 * on Ionic pages and navigation.
 */
@IonicPage()
@Component({
  selector: 'page-news',
  templateUrl: 'news.html',
  providers: [NewsProvider],
  entryComponents: [NewsEnaPage]
})
export class NewsPage {
  items: any;
  limit: any;

  constructor(public navCtrl: NavController, public navParams: NavParams, public newsParser: NewsProvider) {
  }

  ionViewDidLoad() {
    this.getDefaults();
    this.getPosts(this.limit);
    console.log('ionViewDidLoad NewsPage');
  }

  getDefaults(){
    this.limit = 10;
    this.getPosts(this.limit);
  }
  next(){
    this.getPosts(this.limit);
  }

  changeLimit(){
    this.getPosts(this.limit);
  }

  getPosts(limit){
    this.newsParser.getPosts(limit).subscribe(response =>{
      this.items = response.data.children;
    });
  }

  viewItem(item){
    this.navCtrl.push(NewsEnaPage, {item: item});
  }

}
