import { Component, OnInit }        from '@angular/core';
import { Router }                   from '@angular/router';

import { AuthenticationService }    from '../_services/authentication.service';

import { User }                     from '../_models/user';
import { APIresponse}               from '../_models/APIresponse';

@Component({
  //selector: 'app-sign-up',
  templateUrl: './sign-up.component.html',
  styleUrls: ['./sign-up.component.css']
})
export class SignUpComponent
{
    user : User;
    apiResponse : APIresponse;

    constructor(private authenticationService : AuthenticationService, private router : Router)
    {
        this.user = new User();         //nastavimo vrednosti da se ne pojavljajo null-errori v konzoli
        this.user.ID = null;
        this.user.username = '';
        this.user.password = '';
        this.user.email = '';
        this.user.teamName = '';
    }


  //klik na gumb Sign-Up, uporabi se AuthenticationService, klice se registracija
    signUp()
    {
        this.authenticationService.signUp(this.user).subscribe(
            response =>
            {
                this.apiResponse = response;                //dobljen response od servera

                if(this.apiResponse.StatusCode == 201)      //ce je registracija uspela
                    this.router.navigate(['/login']);       //preusmeritev na prijavo
                else
                    alert(this.apiResponse.Status);         //NAMESTO ALERT PRIDE (verjetno) NEKAJ DRUGEGA  TEST
            },
            error =>
            {
                console.log(error);
            }
        )
    }

}
