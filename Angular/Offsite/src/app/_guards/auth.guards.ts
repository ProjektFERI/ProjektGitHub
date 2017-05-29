import { Injectable }               from '@angular/core';
import { Router,
        CanActivate,
        ActivatedRouteSnapshot,
        RouterStateSnapshot }       from '@angular/router';

@Injectable()
export class AuthGuard implements CanActivate
{
    constructor(private router: Router) { }

    canActivate(route: ActivatedRouteSnapshot, state: RouterStateSnapshot)
    {
        if (localStorage.getItem('currentUser'))                                //ce je uporabnik prijavljen, je v localStorage nastavljen "currentUser"
            return true;                                                        //torej je pot dostopna

        this.router.navigate(['/login']);                                       //drugace ni prijavljen in je preusmerjen na login page
        return false;
    }
}
