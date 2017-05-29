import { Component, OnInit }        from '@angular/core';
import { Router}                    from '@angular/router'

import { AuthenticationService }    from '../_services/authentication.service';

import { User }                     from '../_models/user';
import { APIresponse }              from '../_models/APIresponse';

@Component({
  //selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent
{
    user : User;
    apiResponse : APIresponse;

    constructor(private authenticationService : AuthenticationService, private router : Router)
    {
        this.user = new User();
        this.user.ID = null;
        this.user.username = '';
        this.user.password = '';
        this.user.email = '';
    }

    //klik na gumb Sign-In, uporabi se AuthenticationService, klice se prijava
    signIn()
    {
        this.authenticationService.login(this.user).subscribe(
            response =>
            {
                this.apiResponse = response;                                    //dobljen response od servera

                if(this.apiResponse.StatusCode == 200)                          //ce je prijava uspela
                    this.router.navigate(['/']);                                //preusmeritev na domaco stran
                else
                    alert(this.apiResponse.Status);                             //NAMESTO ALERT PRIDE (verjetno) NEKAJ DRUGEGA  TEST
            },
            error =>
            {
                console.log(error);
            }
        )
    }
}
