import { Component, OnInit } from '@angular/core';
import { Router}                    from '@angular/router'

import { UserFull }               from '../_models/userFull';

import {UserlistService} from './userlist.service';

import { GlobalService } from '../_services/global.service';

@Component({
  selector: 'app-userlist',
  templateUrl: './userlist.component.html',
  styleUrls: ['./userlist.component.css']
})
export class UserlistComponent implements OnInit {

  listUserlist : UserFull[];

  constructor(private userlistService : UserlistService, private globalService : GlobalService, private router : Router) { }

  ngOnInit() {
    this.onLoadUserlist();
  }

  //nalozi usere ko odpres
  onLoadUserlist()
  {
      //var requestInfo = { SearchByName : this.SearchByName };
      console.log();
      this.userlistService.fetchUsers(this.listUserlist).subscribe(
          response =>
          {
              this.listUserlist = response;
              console.log(this.listUserlist);
          }
      )
  }

  onCheckTeam(user : any)
  {
      this.globalService.selectedUser = user;
      console.log(this.globalService.selectedUser);
      //this.router.navigate(['/showteam']);

  }


}
