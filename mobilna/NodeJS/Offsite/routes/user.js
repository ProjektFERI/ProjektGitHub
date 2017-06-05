var express             = require('express');
//var User    = require('../models/user');
var router              = express.Router();

var mysql               = require('mysql');
var database            = require('../database');
var databaseConnection  = database.getDatabaseConnection();                     //povezava do baze
var bcrypt              = require('bcrypt');                                    //za enkripcijo gesla
var md5                 = require('md5');                                       //...ignoriraj...



//localhost:8080/user/login
router.post('/login', function(request, response)
{
    console.log("--LOGIN--");
    var username = request.body.username;                                                           //iz poslanega requesta poberemo username in geslo
    var password = request.body.password;
    console.log(username);
    console.log(password);
    var queryString = "SELECT * FROM user WHERE username = " + mysql.escape(username);              //precistimo input
    databaseConnection.query(queryString, function(error, result)
    {
        var res;

        if(result == null || result.length < 1)                                                                       //ce v bazi ni uporabnika z vpisanim username
        {
            request.session.destroy()                                                               //napacna prijava - zbrismo sejo, ce obstaja
            res = { StatusCode : 404, Status : "Username does not exist", Token : null };
            response.json(res);                                                                     //vrnemo response v obliki JSON
        }
        else
        {
            var equals = bcrypt.compareSync(password, result[0].password);                          //primerjamo vneseno geslo s tistim v bazi

            if(equals)                                                                              //vneseno je bilo pravo geslo
            {
                request.session.user = result[0];                                                   //v sejo shranimo vse uporabnikove podatke
                //console.log(request.session.user.ID);


                queryString = "SELECT * FROM team WHERE ID_user = " + result[0].ID;                 //na odjemalca bomo vrnili uporabnikovo ekipo
                databaseConnection.query(queryString, function(error, result)
                {
                    var token = md5(username + Math.random());
                    var userTeam = result[0];

                    //queryString = "SELECT * FROM player JOIN team_player ON player.ID = team_player.ID_player WHERE team_player.ID_team = " + userTeam.ID;    //in ID igralcov vezanih na ekipo
                    queryString = "SELECT player.ID,name,position,club,photo,overall,value,skills,crossing,finishing,heading,short_passing," +
                                "volleys,dribbling,curve,free_kicks,long_passing,ball_controll,acceleration,sprint_speed,agility,reactions,balance," +
                                "shot_power,jumping,stamina,strength,long_shots,aggression,interceptions,positioning,vision,penalties,composure," +
                                "marking,stand_tackle,slide_tackle,GK_diving,GK_handling,GK_kicking,GK_positioning,GK_reflexes " +
                                "FROM player JOIN team_player ON player.ID = team_player.ID_player WHERE team_player.ID_team = " + userTeam.ID;
                    databaseConnection.query(queryString, function(error, result)
                    {
                        var players = [];
                        for(var i = 0; i < result.length; i++)
                            players.push(result[i]);
                        //console.log(queryString + "\n" + players);
                        res = { StatusCode : 200,
                                Status : "Sign-in successful",
                                Token : token,
                                UserTeam : userTeam,
                                Players : players };

                        response.json(res);
                    });
                });
            }
            else
            {
                res = { StatusCode : 403, Status : "Wrong password", Token : null };
                response.json(res);                                                                 //vrnemo response v obliki JSON
            }
        }
    });
});


//localhost:8080/user/sign-up
router.post('/sign-up', function(request, response)
{
    console.log("--SIGN UP--");
    var username    = request.body.username;                                                   //iz poslanega requesta poberemo username, geslo in email ter ime ekipe
    var password    = request.body.password;
    var email       = request.body.email;
    var teamName    = request.body.teamName;

    var salt            = bcrypt.genSaltSync(10);
    var passwordHash    = bcrypt.hashSync(password, salt);                                      //generiramo hash iz gesla v string obliki z salt = 10

    var queryString = "SELECT * FROM user WHERE username = " + mysql.escape(username);
    databaseConnection.query(queryString, function(error, result)
    {
        var res;                                                                                //response ki bo poslan na odjemalca
        if(result.length > 0)                                                                   //ce v bazi ze obstaja user z "username"
        {
            res = { StatusCode : 302, Status : "Username already exists" };
            response.json(res);                                                                 //na odjemalca posljemo response v JSON obliki
        }
        else
        {
            queryString = "INSERT INTO user(username, password, email) VALUES(" + mysql.escape(username) + ", " + mysql.escape(passwordHash) +  ", " + mysql.escape(email) + ")";
            databaseConnection.query(queryString, function(error, result)
            {
                queryString = "INSERT INTO team(ID_user, name) VALUES(" + result.insertId + ", " + mysql.escape(teamName) + ")";        //v bazo dodamo uporabnika in njegovo ekipo
                databaseConnection.query(queryString, function(error, result)
                {
                    if(!error)
                        res = { StatusCode : 201, Status : "Sign-up successful" };

                    response.json(res);
                });
            });
        }
    });
});


module.exports = router;
