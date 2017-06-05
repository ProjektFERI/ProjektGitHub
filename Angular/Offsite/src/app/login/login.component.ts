import { Component, OnInit }        from '@angular/core';
import { Router}                    from '@angular/router'

import { AuthenticationService }    from '../_services/authentication.service';
import { GlobalService }            from '../_services/global.service';

import { User }                     from '../_models/user';
import { APIresponse }              from '../_models/APIresponse';
import { Team }                     from '../_models/team';

@Component({
  //selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent
{
    user        : User;
    apiResponse : APIresponse;

    constructor(private authenticationService : AuthenticationService, private router : Router, private globalService : GlobalService)
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
                this.apiResponse = response;                                        //dobljen response od servera

                if(this.apiResponse.StatusCode == 200)                              //ce je prijava uspela
                    this.router.navigate(['/']);                                    //preusmeritev na domaco stran
                else
                    alert(this.apiResponse.Status);                                 //NAMESTO ALERT PRIDE (verjetno) NEKAJ DRUGEGA  TEST

                this.globalService.updateLoggedIn(true);                            //posodobimo globalno vrednost loggedIn - ali je uporabnik prijavljen na TRUE
                this.globalService.updateUserTeam(this.apiResponse.UserTeam);       //shranimo uporabnikovo ekipo
                this.globalService.updateUserPlayers(this.apiResponse.Players);     //in igralce v globalni scope alikacije
                this.globalService.createPlayersCopy(this.apiResponse.Players);     //naredimo backup dobljenih igralcev
                this.globalService.createTeamCopy(this.apiResponse.UserTeam);       //naredimo se kopijo ekipe
                console.log(this.globalService.UserTeam);
                console.log(this.globalService.UserPlayers);
            },
            error =>
            {
                console.log(error);
            }
        )
    }
}
