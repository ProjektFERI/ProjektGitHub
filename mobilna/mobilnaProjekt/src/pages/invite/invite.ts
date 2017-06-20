import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';

import { SMS } from '@ionic-native/sms';

import { Contacts, Contact } from '@ionic-native/contacts';

//test
import { LocalNotifications } from '@ionic-native/local-notifications';

import { AlertController } from 'ionic-angular';





@IonicPage()
@Component({
  selector: 'page-invite',
  templateUrl: 'invite.html',
})
export class InvitePage {

  phoneNumber : string;
  messageString : string;


  constructor(private sms: SMS, private localNotifications: LocalNotifications, private contacts: Contacts, public navCtrl: NavController, public navParams: NavParams, public alertCtrl: AlertController) {

    this.messageString = "Hello friend! \nI invite you to play Offsite, the best fantasy league on the web.\nCreate your team and compete with other players.\nSee you on the pitch!";

  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad InvitePage');
  }


  sendInvite(){

    this.sms.send(this.phoneNumber, this.messageString).then(
      ()=>{
        console.log("Message sent.");
        this.showAlert("Message sent.", "");
      },
      ()=>{
        console.log("Message FAILURE");
        this.showAlert("Message FAILURE", "");
      }
    );

    /*
    console.log("Notification:");
    this.localNotifications.schedule({
      id: 1,
      title: "Notification title",
      text: 'texttexttexttexttexttexttexttexttexttexttexttexttexttexttexttext',
    });
    */


  }

  showAlert(title, sub)
  {
    let alert = this.alertCtrl.create({
      title: title,
      subTitle: sub,
      buttons: ['OK']
    });
    alert.present();
  }

  searchContacts()
  {

let obj = this;
    let cn = this.contacts.pickContact().then(function(result){
      obj.phoneNumber = result.phoneNumbers[0].value;
      //bj.showAlert("1: " + result.phoneNumbers[0].value, "");
      //bj.showAlert("2: " + bj.phoneNumber, "");
    });
    //this.showAlert("3: " + this.phoneNumber, "");
    //this.showAlert("4: " + ph, "");

  }



}
