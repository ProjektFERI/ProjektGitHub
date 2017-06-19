var express             = require('express');
var router              = express.Router();

var mysql               = require('mysql');
var database            = require('../database');
var databaseConnection  = database.getDatabaseConnection();                     //povezava do baze


router.get('/mostValuableTeam', function(request, response)
{
    var queryString = "SELECT * FROM team ORDER BY value DESC, points DESC LIMIT 1";
    databaseConnection.query(queryString, function(error, result)
    {
        var team = result[0];
        response.json(team);
    });
});

router.get('/mostPickedPlayer', function(request, response)
{
    var queryString = "SELECT ID_player FROM team_player GROUP BY ID_player ORDER BY COUNT(*) DESC LIMIT 1";
    databaseConnection.query(queryString, function(error, result)
    {
        var ID_player = result[0].ID_player;
        //console.log(ID_player);
        queryString = "SELECT * FROM player WHERE ID = " + ID_player;

        databaseConnection.query(queryString, function(error, result)
        {
            var player = result;
            //console.log(result);
            response.json(player);
        });
    });
});

router.get('/mostUsedFormation', function(request, response)
{
    var queryString = "SELECT formation FROM team GROUP BY formation ORDER BY COUNT(*) DESC LIMIT 1";
    databaseConnection.query(queryString, function(error, result)
    {
        var formation = result[0];
        response.json(formation);
    });
});

router.get('/mostWins', function(request, response)
{
    var queryString = "SELECT * FROM team ORDER BY wins DESC, points DESC LIMIT 1";
    databaseConnection.query(queryString, function(error, result)
    {
        var team = result[0];
        response.json(team);
    });
});

router.get('/mostDraws', function(request, response)
{
    var queryString = "SELECT * FROM team ORDER BY draws DESC, points DESC LIMIT 1";
    databaseConnection.query(queryString, function(error, result)
    {
        var team = result[0];
        response.json(team);
    });
});

router.get('/mostLosses', function(request, response)
{
    var queryString = "SELECT * FROM team ORDER BY losses DESC, points DESC LIMIT 1";
    databaseConnection.query(queryString, function(error, result)
    {
        var team = result[0];
        response.json(team);
    });
});

router.get('/mostGoalsScored', function(request, response)
{
    var queryString = "SELECT * FROM team ORDER BY goals_for DESC, points DESC LIMIT 1";
    databaseConnection.query(queryString, function(error, result)
    {
        var team = result[0];
        response.json(team);
    });
});

router.get('/mostGoalsConceded', function(request, response)
{
    var queryString = "SELECT * FROM team ORDER BY goals_against DESC, points DESC LIMIT 1";
    databaseConnection.query(queryString, function(error, result)
    {
        var team = result[0];
        response.json(team);
    });
});

router.get('/leastGoalsScored', function(request, response)
{
    var queryString = "SELECT * FROM team WHERE points > 0 ORDER BY goals_for ASC, points DESC LIMIT 1";
    databaseConnection.query(queryString, function(error, result)
    {
        var team = result[0];
        response.json(team);
    });
});

router.get('/leastGoalsConceded', function(request, response)
{
    var queryString = "SELECT * FROM team WHERE points > 0 ORDER BY goals_against ASC, points DESC LIMIT 1";
    databaseConnection.query(queryString, function(error, result)
    {
        var team = result[0];
        response.json(team);
    });
});


module.exports = router;
