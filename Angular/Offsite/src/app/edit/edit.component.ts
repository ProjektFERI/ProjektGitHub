import { Component, OnInit }        from '@angular/core';
import { Router}                    from '@angular/router'

import { AuthenticationService }    from '../_services/authentication.service';

import { User }                     from '../_models/user';
import { APIresponse }              from '../_models/APIresponse';


@Component({
  //selector: 'app-edit',
  templateUrl: './edit.component.html',
  styleUrls: ['./edit.component.css']
})
export class EditComponent {

  user: User;
  apiResponse : APIresponse;

  constructor(private authenticationService : AuthenticationService, private router : Router)
  {
      this.user = new User();
      this.user.ID = null;
      this.user.username = '';
      this.user.password = '';
      this.user.email = '';
    }

  //klik na gumb Edit, uporabi se AuthenticationService, klice se sprememba
  edit()
  {
      this.authenticationService.edit(this.user).subscribe(
          response =>
          {

              this.apiResponse = response;                                    //dobljen response od servera

              if(this.apiResponse.StatusCode == 201)   {                       //ce je prijava uspela
                  this.router.navigate(['/']);
                  console.log("doma");                           //preusmeritev na domaco stran
                }
              else
                  alert(this.apiResponse.Status);
          },
          error =>
          {
              console.log(error);
          }
      )
  }

}
