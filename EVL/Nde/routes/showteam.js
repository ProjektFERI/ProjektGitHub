var express             = require('express');
var router              = express.Router();

var mysql               = require('mysql');
var database            = require('../database');
var databaseConnection  = database.getDatabaseConnection();                     //povezava do baze


//localhost:8080/showteam/team
router.post('/team', function(request, response)
{
    console.log("--SHOWTEAM--");

    var queryString = "SELECT * FROM team WHERE ID_user = '" + request.body.ID + "'";


    console.log(queryString);

    //var queryString = "SELECT * FROM player";
    databaseConnection.query(queryString, function(error, result)
    {
        response.json(result);                                                  //vrnemo
    });
});

router.post('/players', function(request, response)
{
    console.log("--SHOWTEAM PLAYERS--");


    var queryString = "SELECT * FROM player JOIN team_player ON player.ID = team_player.ID_player WHERE team_player.ID_team = '" + request.body.ID + "'";
/*
    var queryString = "SELECT player.ID,name,position,club,photo,overall,value,skills,crossing,finishing,heading,short_passing," +
                "volleys,dribbling,curve,free_kicks,long_passing,ball_controll,acceleration,sprint_speed,agility,reactions,balance," +
                "shot_power,jumping,stamina,strength,long_shots,aggression,interceptions,positioning,vision,penalties,composure," +
                "marking,stand_tackle,slide_tackle,GK_diving,GK_handling,GK_kicking,GK_positioning,GK_reflexes " +
                "FROM player JOIN team_player ON player.ID = team_player.ID_player WHERE team_player.ID_team = " + request.body.ID;
*/

    console.log(queryString);

    databaseConnection.query(queryString, function(error, result)
    {
        response.json(result);                                                  //vrnemo
    });
});

router.post('/starting', function(request, response)
{
    console.log("--SHOWTEAM STARTING--");


    var queryString = "SELECT * FROM player JOIN team_player ON player.ID = team_player.ID_player WHERE team_player.ID_team = '" + request.body.ID + "' AND team_player.in_starting_XI = 1";


    console.log(queryString);

    databaseConnection.query(queryString, function(error, result)
    {
        response.json(result);                                                  //vrnemo
    });
});


router.post('/userStartingXI', function(request, response)
{
    console.log("--USER STARTING XI--");

    var teamID = request.body.teamID;

    var queryString = "SELECT player.ID,name,position,club,photo,overall,value,skills,crossing,finishing,heading,short_passing," +
                "volleys,dribbling,curve,free_kicks,long_passing,ball_controll,acceleration,sprint_speed,agility,reactions,balance," +
                "shot_power,jumping,stamina,strength,long_shots,aggression,interceptions,positioning,vision,penalties,composure," +
                "marking,stand_tackle,slide_tackle,GK_diving,GK_handling,GK_kicking,GK_positioning,GK_reflexes " +
                "FROM player JOIN team_player ON player.ID = team_player.ID_player WHERE team_player.ID_team = " + teamID + " AND team_player.in_starting_XI = true";

    databaseConnection.query(queryString, function(error, result)
    {
        response.json(result);
    });
});


router.post('/matchCount', function(request, response)
{
    console.log("--MATCH COUNT--");

    var teamID = request.body.TeamID;

    var queryString = "SELECT Count(ID) AS MatchCount FROM fixture WHERE DATE(date) = DATE(NOW()) AND ID_team2 = " + teamID;

    databaseConnection.query(queryString, function(error, result)
    {
        console.log(result[0].MatchCount);
        response.json(result[0].MatchCount);
    });
});


module.exports = router;
