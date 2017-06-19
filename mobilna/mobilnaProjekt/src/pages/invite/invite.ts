import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';

import { SMS } from '@ionic-native/sms';

/**
 * Generated class for the InvitePage page.
 *
 * See http://ionicframework.com/docs/components/#navigation for more info
 * on Ionic pages and navigation.
 */
@IonicPage()
@Component({
  selector: 'page-invite',
  templateUrl: 'invite.html',
})
export class InvitePage {

  phoneNumber : string;
  messageString : string;

  constructor(private sms: SMS, public navCtrl: NavController, public navParams: NavParams) {

    this.messageString = "Hello friend! \nI invite you to play Offsite, the best fantasy league on the web.\nCreate your team and compete with other players.\nSee you on the pitch!";

  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad InvitePage');
  }


  sendInvite(){

    this.sms.send(this.phoneNumber, this.messageString);


  }



}
