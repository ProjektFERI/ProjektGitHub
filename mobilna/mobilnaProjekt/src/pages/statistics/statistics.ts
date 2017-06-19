import { Component } 				from '@angular/core';
import { IonicPage, NavController,
	NavParams, ModalController } 	from 'ionic-angular';

import { StatisticsProvider } 		from '../../providers/statistics/statistics';

import { Team }						from '../../_models/team';
import { Player }					from '../../_models/player';

import { PlayerDetailsPage }		from '../player-details/player-details';
import { TeamDetailsPage }			from '../team-details/team-details';

import { ShowteamPage } from '../showteam/showteam';

@IonicPage()
@Component({
  selector: 'page-statistics',
  templateUrl: 'statistics.html',
  providers : [ StatisticsProvider ]
})
export class StatisticsPage
{
	 MostValuableTeam   : Team;
	 MostPickedPlayer   : Player;
	 SelectedPlayer 	: Player;
	 MostUsedFormation	: string;
	 MostWins			: Team;
	 MostDraws			: Team;
	 MostLosses			: Team;
	 MostGoalsScored	: Team;
	 MostGoalsConceded	: Team;
	 LeastGoalsScored	: Team;
	 LeastGoalsConceded	: Team;

	constructor(public navCtrl: NavController, public navParams: NavParams, private statisticsProvider : StatisticsProvider, private modalController : ModalController)
	{
		this.statisticsProvider.getMostValuableTeam().subscribe(
            response =>
            {
                this.MostValuableTeam = response;
            }
        )
        this.statisticsProvider.getMostPickedPlayer().subscribe(
            response =>
            {
                this.MostPickedPlayer = response;
                this.SelectedPlayer = response;
            }
        )
        this.statisticsProvider.getMostUsedFormation().subscribe(
            response =>
            {
                this.MostUsedFormation = response;
            }
        )
        this.statisticsProvider.getTeamWithMostWins().subscribe(
            response =>
            {
                this.MostWins = response;
            }
        )
        this.statisticsProvider.getTeamWithMostDraws().subscribe(
            response =>
            {
                this.MostDraws = response;
            }
        )
        this.statisticsProvider.getTeamWithMostLosses().subscribe(
            response =>
            {
                this.MostLosses = response;
            }
        )
        this.statisticsProvider.getMostGoalsScored().subscribe(
            response =>
            {
                this.MostGoalsScored = response;
            }
        )
        this.statisticsProvider.getMostGoalsConceded().subscribe(
            response =>
            {
                this.MostGoalsConceded = response;
            }
        )
        this.statisticsProvider.getLeastGoalsScored().subscribe(
            response =>
            {
                this.LeastGoalsScored = response;
            }
        )
        this.statisticsProvider.getLeastGoalsConceded().subscribe(
            response =>
            {
                this.LeastGoalsConceded = response;
            }
        )
	}


	openModalPlayer()
	{

		this.navCtrl.push(PlayerDetailsPage, {pPlayer : this.MostPickedPlayer});

		//const modal = this.modalController.create(PlayerDetailsPage, {pPlayer : this.MostPickedPlayer});
		//modal.present();

	}


	openModalTeam(team : Team)
	{

		this.navCtrl.push(ShowteamPage, {selectedTeam : team});

		//const modal = this.modalController.create(ShowteamPage, {pTeam : team});
		//modal.present();

	}
}
