import { Component }        from '@angular/core';

import { GlobalService }    from './_services/global.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css'],
  providers: [ GlobalService ]
})
export class AppComponent
{

}
