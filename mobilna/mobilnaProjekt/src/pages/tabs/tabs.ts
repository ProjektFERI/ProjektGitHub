import { Component } from '@angular/core';

import { LogInPage } from '../log-in/log-in';
import { HomePage } from '../home/home';

@Component({
  templateUrl: 'tabs.html'
})
export class TabsPage {

  tab1Root = HomePage;
  tab2Root = LogInPage;

  constructor() {

  }
}
