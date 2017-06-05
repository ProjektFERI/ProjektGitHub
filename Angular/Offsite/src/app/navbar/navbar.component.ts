import { Component }        from '@angular/core';
import { Router }           from '@angular/router';

import { GlobalService }    from '../_services/global.service';

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.css']
})
export class NavbarComponent
{
    loggedIn : boolean;
    constructor(private globalService : GlobalService, private router : Router)
    {
        this.loggedIn = this.checkIfLoggedIn();                                 //na zacetku pogledamo ali je uporabnik prijavljen

        //subscribamo na sprememebo globalne spremenljivke loggedIn - se zgodi ko se uporabnik prijavi/odjavi
        this.globalService.dataChange.subscribe((data) =>
        {
            this.loggedIn = data;
        });
    }


    //za preverjanje ce je uporabnik prijavljen - ce je v localStorage 'currentUser'
    checkIfLoggedIn()
    {
        if(localStorage.getItem('currentUser'))
            return true;

        return false;
    }


    //posodobimo globalno vrednost loggedIn - ali je uporabnik prijavljen na FALSE, sprememba bo vidna v NavBar, kjer smo subscribani
    logout()
    {
        localStorage.removeItem('currentUser');         //izbrisemo uporabnikove podatke iz localStorage
        this.globalService.updateLoggedIn(false);       //posodobimo login stanje
        this.router.navigate(['/']);                    //in uporabnika preusmerimo na domaco stran
    }

}
