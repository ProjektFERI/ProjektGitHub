import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, ModalController } from 'ionic-angular';

import { StatisticsProvider } from '../../providers/statistics/statistics';
import { Player }			from '../../_models/player';
import { Team }			from '../../_models/team';
import { PlayerDetailsPage }		from '../player-details/player-details';
import { TeamDetailsPage }			from '../team-details/team-details';

/**
 * Generated class for the StatisticsPage page.
 *
 * See http://ionicframework.com/docs/components/#navigation for more info
 * on Ionic pages and navigation.
 */
@IonicPage()
@Component({
  selector: 'page-statistics',
  templateUrl: 'statistics.html',
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
		const modal = this.modalController.create(PlayerDetailsPage, {pPlayer : this.MostPickedPlayer});

		modal.present();
	}


	openModalTeam(team : Team)
	{
		const modal = this.modalController.create(TeamDetailsPage, {pTeam : team});

		modal.present();
	}
}
