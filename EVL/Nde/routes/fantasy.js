var express             = require('express');
var router              = express.Router();

var mysql               = require('mysql');
var database            = require('../database');
var databaseConnection  = database.getDatabaseConnection();                     //povezava do baze


//localhost:8080/fantasy/players
router.post('/players', function(request, response)
{
    console.log("--ALL PLAYERS--");
    //console.log(request.body.SortOption + " " + request.body.Position);

    var queryString;                                                            //glede na parametre zgradimo query string
    if(request.body.Position == "*")
        queryString = "SELECT * FROM player ORDER BY " + request.body.SortOption + " DESC";
    else
        queryString = "SELECT * FROM player WHERE position = '" + request.body.Position + "' ORDER BY " + request.body.SortOption + " DESC";

    if(request.body.SearchByName != null)
        queryString = "SELECT * FROM player WHERE name LIKE '%" + request.body.SearchByName + "%'";

    console.log(queryString);

    //var queryString = "SELECT * FROM player";
    databaseConnection.query(queryString, function(error, result)
    {
        response.json(result);                                                  //vrnemo vse igralce v bazi
    });
});


//localhost:8080/fantasy/updateSelectedPlayers
router.post('/updateSelectedPlayers', function(request, response)
{
    console.log("--UPDATE SELECTED PLAYERS--");

    var SelectedPlayers = request.body.SelectedPlayers;                         //polje igralcev, ki jih je izbral uporabnik v svojo ekipo
    var UserTeam = request.body.UserTeam;                                       //uporabnikova ekipa (posodobljene vrednosti glede na izbiro novih igralcev)

    //ker zacetna postava ni vec izbrana, se s to ekipo ne more igrati (dokler se ne posodobi postava)
    var queryString = "UPDATE team SET is_playable = false, value = " + UserTeam.value + ", budget = " + UserTeam.budget +
                        ", transfers = 0, gks = 2, defs = 5, mids = 5, fwds = 3" + " WHERE ID = " + UserTeam.ID + ";";
    //console.log(queryString);

    databaseConnection.query(queryString, function(error, result)
    {
        //zbrisemo vse povezave na igralce, ker bomo vnesli nove
        queryString = "DELETE FROM team_player WHERE ID_team = (SELECT team.ID FROM team WHERE team.ID_user = " + request.session.user.ID + ");";

        databaseConnection.query(queryString, function(error, result)
        {
            var insertString = "INSERT INTO team_player(ID_team, ID_player, in_starting_XI) VALUES";        //vnesemo nove povezave med igralcevo ekipo in izbranimi igralci
            for(var i = 0; i < SelectedPlayers.length; i++)                                                 //DEFAULT - noben igralec ni v zacetni postavi, zato bo uporabnik
            {                                                                                               //moral za posodobitvijo ekipe spremeniti zacetno postavo
                insertString += "(" + UserTeam.ID + ", " + SelectedPlayers[i].ID + ", false)";
                if(i < 14)
                    insertString += ",";
            }
            //console.log(insertString);

            databaseConnection.query(insertString, function(error, result)
            {
                response.json( { Status : "Success" } );
            });
        });
    });
    //console.log(queryString);
});


//NEWNENWNEW
router.post('/rec', function(request, response)
{
    console.log("--REC--");

    var queryString = "SELECT * FROM player WHERE value <= '" + request.body.UserTeam.budget + "'";                 //glede na parametre zgradimo query string
    if(request.body.UserTeam.gks >= 2)
        queryString = queryString + " AND position <> 'GK'";
    if(request.body.UserTeam.defs >= 5)
        queryString = queryString + " AND position <> 'DEF'";
    if(request.body.UserTeam.mids >= 5)
        queryString = queryString + " AND position <> 'MID'";
    if(request.body.UserTeam.fwds >= 3)
        queryString = queryString + " AND position <> 'FWD'";
    for (var i = 0; i < request.body.SelectedPlayers.length; i++) {
          queryString = queryString + " AND ID <> '" + request.body.SelectedPlayers[i].ID + "'";
    }



    queryString = queryString + " ORDER BY overall DESC LIMIT 10";


    console.log(queryString);

    //var queryString = "SELECT * FROM player";
    databaseConnection.query(queryString, function(error, result)
    {
        response.json(result);                                                  //vrnemo vse igralce v bazi
    });
});


//localhost:8080/fantasy/pickStartingXI
router.post('/pickStartingXI', function(request, response)
{
    console.log("--PICK STARTING XI--");

    //console.log(request.body.SelectedPlayers);
    var SelectedPlayers = request.body.SelectedPlayers;                         //seznam igralcov v ekipi
    var StartingXIplayers = request.body.StartingXIplayers;                     //seznam ki predstavlja ali je posamezni igralec v zacetni postavi
    var teamID = request.body.teamID;                                           //ID uporabnikove ekipe
    var formation = request.body.formation;                                     //formacija, ik jo je izbral/spremenil uporabnik

    var queryString = "UPDATE team SET formation = '" + formation + "', is_playable = true WHERE ID = " + teamID + ";";  //posodobimo formacijo in z ekipo se da igrati ker je bila izbrana zacetna postava

    databaseConnection.query(queryString, function(error, result)
    {
        console.log(error);
        for(var i = 0; i < SelectedPlayers.length; i++)                                                 //za vse uporabnikove igralce spremenimo ali je v zacetni postavi ali ne
        {
            var inXI = StartingXIplayers[i];
            queryString = "UPDATE team_player SET in_starting_XI = " + inXI +" WHERE ID_team = " + teamID + " AND ID_player = " + SelectedPlayers[i].ID;
            //console.log(queryString);
            databaseConnection.query(queryString, function(error, result){});
        }
    })

    response.json( { Status:"Success" } );
});


//teamsayy
router.post('/teams', function(request, response)
{
    console.log("--TEAMS--");

    var queryString = "SELECT * FROM team ORDER BY points DESC";

    console.log(queryString);

    databaseConnection.query(queryString, function(error, result)
    {
        response.json(result);
    });
});


router.get('/fixtures', function(request, response)
{
    var queryString = "SELECT * FROM fixture ORDER BY date DESC";

    databaseConnection.query(queryString, function(error, result)
    {
        response.json(result);
    });
});


router.post('/fixtureTeams', function(request, response)
{
    var fixtureID = request.body.FixtureID;

    var queryString = "SELECT * FROM fixture WHERE ID = " + fixtureID;

    databaseConnection.query(queryString, function(error, result)
    {
        var fixture = result[0];
        var team1ID = fixture.ID_team1;
        var team2ID = fixture.ID_team2;

        var teams = [];

        queryString = "SELECT * FROM team WHERE ID = " + team1ID;

        databaseConnection.query(queryString, function(error, result)
        {
            teams.push(result[0]);

            queryString = "SELECT * FROM team WHERE ID = " + team2ID;

            databaseConnection.query(queryString, function(error, result)
            {
                teams.push(result[0]);

                response.json(teams);
            });
        });
    });
});


/*localhost:8080/fantasy/simulateFixture
 *
 * PRICAKOVAN JSON:
 * {
 *   UserTeam : Team,
 *   OpponentTeam : Team,
 *   UserPlayers : Player[],
 *   OpponentPlayers : Player[]
 * }
 *
*/
router.post('/simulateFixture', function(request, response)
{
    console.log("--SIMULATE FIXTURE--");

    var team1 = request.body.UserTeam;                  //uporabnikova ekipa, tisti ki je klikno na gumb (AWAY TEAM) - v bazi ID_team2
    var team2 = request.body.OpponentTeam;              //nasprotnikova ekipa (HOME TEAM) - v bazi ID_team1
    var players1 = request.body.UserPlayers;            //igralci v zacetni postavi uporabnika
    var players2 = request.body.OpponentPlayers;        //igralci v zacetni postavi nasprotnika

    /*console.log(team1);
    console.log(team2);     <-- JE OK
    console.log(players1);
    console.log(players2);*/
    var weightTeam1 = weightTeam2 = 0;

    var formationTeam1 = team1.formation.split("-");    //[0] = branilci, [1] = vezni, [2] = napadalci
    var formationTeam2 = team2.formation.split("-");

    var weightOverallTeam1 = calculateWeightOverall(players1);                          //utez za splosno kakovost ekipe
    var weightOverallTeam2 = calculateWeightOverall(players2);
    weightTeam1 = calculateRatio(weightOverallTeam1, weightOverallTeam2);
    weightTeam2 = 100 - weightTeam1;
    //console.log(weightTeam1 + " " + weightTeam2);

    var weightAttackTeam1 = calculateWeightAttack(players1);                            //utez za napad ekipe
    var weightAttackTeam2 = calculateWeightAttack(players2);
    weightTeam1 += calculateRatio(weightAttackTeam1, weightAttackTeam2);
    weightTeam2 += 100 - calculateRatio(weightAttackTeam1, weightAttackTeam2);
    //console.log(weightTeam1 + " " + weightTeam2);

    var weightDefenceTeam1 = calculateWeightDefence(players1);                          //utez za obrmabo ekipe
    var weightDefenceTeam2 = calculateWeightDefence(players2);
    weightTeam1 += calculateRatio(weightDefenceTeam1, weightDefenceTeam2);
    weightTeam2 += 100 - calculateRatio(weightDefenceTeam1, weightDefenceTeam2);
    //console.log(weightTeam1 + " " + weightTeam2);

    var weightMidfieldTeam1 = calculateWeightMidfield(players1);                        //utez za vezo ekipe
    var weightMidfieldTeam2 = calculateWeightMidfield(players2);
    weightTeam1 += calculateRatio(weightMidfieldTeam1, weightMidfieldTeam2);
    weightTeam2 += 100 - calculateRatio(weightMidfieldTeam1, weightMidfieldTeam2);
    //console.log(weightTeam1 + " " + weightTeam2);

    var weightGKteam1 = calculateWeightGK(players1);                                    //utez za golmana ekipe
    var weightGKteam2 = calculateWeightGK(players2);
    weightTeam1 += calculateRatio(weightGKteam1, weightGKteam2);
    weightTeam2 += 100 - calculateRatio(weightGKteam1, weightGKteam2);
    //console.log(weightTeam1 + " " + weightTeam2);


    var team1Percentage = calculateRatio(weightTeam1, weightTeam2);                     //moznost za zmago prve ekipe
    var team2Percentage = 100 - calculateRatio(weightTeam1, weightTeam2);               //moznost za zmago druge ekipe
    console.log("Team 1: " +team1Percentage + "\nTeam 2:" + team2Percentage);


    var powerTeam1 = calculatePower(players1);                                          //fizicna moc ekip
    var powerTeam2 = calculatePower(players2);

    if(powerTeam1 > powerTeam2)                 //tista ekipa ki je bolj fizicno mocna ima vecjo moznost za zmago
    {
        team1Percentage += 3;
        team2Percentage -= 3;
    }
    else
    {
        team1Percentage -= 3;
        team2Percentage += 3;
    }

    var aggressionTeam1 = calculateAggression(players1);                                //agresivnost / zagnanost ekip
    var aggressionTeam2 = calculateAggression(players2);

    if(aggressionTeam1 > aggressionTeam2)       //ce je prva ekipa bolj agresivna
    {
        var randNo = Math.random();
        if(randNo < 0.05)                       //je moznost rdecega kartona
        {
            team1Percentage -= 15;              //v tem primeru manjsa moznost za zmago
            team2Percentage += 15;
        }
        else
        {
            team1Percentage += 3;               //v vecini primerov pa je to vecja moznost za zmago
            team2Percentage -= 3;
        }
    }
    else
    {                                           //in obratno za drugo ekipo
        var randNo = Math.random();
        if(randNo < 0.05)
        {
            team1Percentage += 15;
            team2Percentage -= 15;
        }
        else
        {
            team1Percentage -= 3;
            team2Percentage += 3;
        }
    }

    team1Percentage -= 5;                       //domaca ekipa ima malo vecje moznosti za zmago, gostujoca malo manjse
    team2Percentage += 5;

    var drawChance;                                         //verjetnost za remi
    if(Math.abs(team1Percentage - team2Percentage) < 4)     //ce sta ekipi zelo blizu po kakovosti, so dokaj velike moznosti za remi, drugace manjse
        drawChance = 35;
    else if(Math.abs(team1Percentage - team2Percentage) > 4 && Math.abs(team1Percentage - team2Percentage) < 10)
        drawChance = 25;
    else
        drawChance = 15;

    console.log("Team 1: " +team1Percentage + "\nTeam 2:" + team2Percentage);

    var isDraw = Math.floor((Math.random() * 100) + 1);
    if(isDraw <= drawChance)
    {
        console.log("DRAW");
        var randNo = Math.floor((Math.random() * 4));
        console.log("team1 " + randNo + "-" + randNo + " team2");

        var queryString = "INSERT INTO fixture (ID_team1, ID_team2, goals_team1, goals_team2) VALUES (" + team2.ID + ", " + team1.ID + ", " + randNo + ", " + randNo + ")";

        databaseConnection.query(queryString, function(error, result)
        {
            queryString = "UPDATE team SET goals_for = goals_for + " + randNo + ", goals_against = goals_against + " + randNo +
                            ", draws = draws + 1, points = points + 1 WHERE ID = " + team2.ID;

            databaseConnection.query(queryString, function(error, result)
            {
                queryString = "UPDATE team SET goals_for = goals_for + " + randNo + ", goals_against = goals_against + " + randNo +
                                ", draws = draws + 1, points = points + 1 WHERE ID = " + team1.ID;

                databaseConnection.query(queryString, function(error, result)
                {
                    var res = { Status : "Draw", Result : team2.name + " " + randNo + "-" + randNo + " " + team1.name };

                    response.json(res);
                });
            });
        });
    }

    else
    {
        var randNo = Math.floor((Math.random() * 100) + 1);

        var limit = Math.floor((Math.random() * 3) + 1);                //meja bo 1, 2 ali 3 goli
        var lower = Math.floor((Math.random() * limit))                 //stevilo golov ki jih da porazena ekipa 0, 1 ali 2
        var upper = Math.floor((Math.random() * 3) + limit);            //stevilo golov ki jih da zmagovalna ekipa, zagotovo vec od porazenca

        if(randNo < team1Percentage)
        {
            console.log("WINNER: team1");

            console.log("team2 " + lower + "-" + upper + " team1");

            var queryString = "INSERT INTO fixture (ID_team1, ID_team2, goals_team1, goals_team2) VALUES (" + team2.ID + ", " + team1.ID + ", " + lower + ", " + upper + ")";
            databaseConnection.query(queryString, function(error, result)
            {
                queryString = "UPDATE team SET goals_for = goals_for + " + lower + ", goals_against = goals_against + " + upper +
                                ", losses = losses + 1 WHERE ID = " + team2.ID;

                databaseConnection.query(queryString, function(error, result)
                {
                    queryString = "UPDATE team SET goals_for = goals_for + " + upper + ", goals_against = goals_against + " + lower +
                                    ", wins = wins + 1, points = points + 3, transfers = transfers + 1 WHERE ID = " + team1.ID;

                    databaseConnection.query(queryString, function(error, result)
                    {
                        var res = { Status : "You won", Result : team2.name + " " + lower + "-" + upper + " " + team1.name };

                        response.json(res);
                    });
                });
            });
        }
        else
        {
            console.log("WINNER: team2");
            console.log("team1 " + lower + "-" + upper + " team2");

            var queryString = "INSERT INTO fixture (ID_team1, ID_team2, goals_team1, goals_team2) VALUES (" + team2.ID + ", " + team1.ID + ", " + lower + ", " + upper + ")";
            databaseConnection.query(queryString, function(error, result)
            {
                queryString = "UPDATE team SET goals_for = goals_for + " + lower + ", goals_against = goals_against + " + upper +
                                ", losses = losses + 1 WHERE ID = " + team1.ID;

                databaseConnection.query(queryString, function(error, result)
                {
                    queryString = "UPDATE team SET goals_for = goals_for + " + upper + ", goals_against = goals_against + " + lower +
                                    ", wins = wins + 1, points = points + 3, transfers = transfers + 1 WHERE ID = " + team2.ID;

                    databaseConnection.query(queryString, function(error, result)
                    {
                        var res = { Status : "You lost", Result : team2.name + " " + upper + "-" + lower + " " + team1.name };

                        response.json(res);
                    });
                });
            });
        }
    }

    /*log(weightOverallTeam1, weightAttackTeam1, weightDefenceTeam1, weightMidfieldTeam1, powerTeam1, weightGKteam1, aggressionTeam1);
    console.log("----");
    log(weightOverallTeam2, weightAttackTeam2, weightDefenceTeam2, weightMidfieldTeam2, powerTeam2, weightGKteam2, aggressionTeam2);*/

});

function calculateWeightOverall(players)
{
    var weight = 0;
    for(var i = 0; i < players.length; i++)
        weight += players[i].overall;

    return weight;
}

function calculateWeightAttack(players)
{
    var weight = 0;
    for(var i = 0; i < players.length; i++)
        if(players[i].position == "FWD")
            weight += players[i].finishing + players[i].volleys + players[i].positioning + players[i].heading;

    return weight;
}

function calculateWeightDefence(players)
{
    var weight = 0;
    for(var i = 0; i < players.length; i++)
    {
        if(players[i].position == "DEF")
            weight += players[i].marking + players[i].stand_tackle + players[i].slide_tackle + players[i].interceptions;
        /*else if(players[i].position == "GK")
            weight += players[i].GK_diving + players[i].GK_kicking +  players[i].GK_handling +  players[i].GK_reflexes +  players[i].GK_positioning;*/
    }

    return weight;
}

function calculateWeightMidfield(players)
{
    var weight = 0;
    for(var i = 0; i < players.length; i++)
        if(players[i].position == "MID")
            weight += players[i].short_passing + players[i].long_passing + players[i].ball_controll + players[i].dribbling;

    return weight;
}

function calculateWeightGK(players)
{
    var weight = 0;
    for(var i = 0; i < players.length; i++)
        if(players[i].position == "GK")
            weight += players[i].GK_diving + players[i].GK_kicking +  players[i].GK_handling +  players[i].GK_reflexes +  players[i].GK_positioning;

    return weight;
}

function calculatePower(players)
{
    var weight = 0;
    for(var i = 0; i < players.length; i++)
        weight += players[i].stamina + players[i].strength + players[i].jumping + players[i].sprint_speed + players[i].acceleration;

    return weight;
}

function calculateAggression(players)
{
    var weight = 0;
    for(var i = 0; i < players.length; i++)
        weight += players[i].aggression;

    return weight;
}

function calculateRatio(weight1, weight2)
{
    var sum = weight1 + weight2;
    return weight1 / sum * 100;
}

function log(overall, atk, def, mid, power, gk, aggression)
{
    console.log("Overall: " + overall);
    console.log("Attack: " + atk);
    console.log("Defence: " + def);
    console.log("Midfield: " + mid);
    console.log("Power: " + power);
    console.log("GK: " + gk);
    console.log("Aggression: " + aggression);
}



/* 
 * ------------
 * IONIC
 * ------------
 */


router.post('/ionic/playersOfTeam', function(request, response)
{
	var teamID = request.body.TeamID;

	var queryString = "SELECT player.ID,name,position,club,photo,overall,value,skills,crossing,finishing,heading,short_passing," +
                                "volleys,dribbling,curve,free_kicks,long_passing,ball_controll,acceleration,sprint_speed,agility,reactions,balance," +
                                "shot_power,jumping,stamina,strength,long_shots,aggression,interceptions,positioning,vision,penalties,composure," +
                                "marking,stand_tackle,slide_tackle,GK_diving,GK_handling,GK_kicking,GK_positioning,GK_reflexes " +
                                "FROM player JOIN team_player ON player.ID = team_player.ID_player WHERE team_player.ID_team = " + teamID;

	databaseConnection.query(queryString, function(error, result)
	{
		response.json(result);
	});
});

router.post('/ionic/fixtures', function(request, response)
{
	console.log("--IONIC FIXTURES--");
	var date = request.body.date;
	var queryString;

	if(date == null)
		queryString = "SELECT * FROM fixture WHERE DATE(date) = DATE(NOW()) ORDER BY date DESC";
	else
		queryString = "SELECT * FROM fixture WHERE DATE(date) = DATE('" + date + "') ORDER BY date DESC";

	databaseConnection.query(queryString, function(error, result)
	{
		response.json(result);
	});
});

module.exports = router;
