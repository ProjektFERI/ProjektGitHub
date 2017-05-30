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

    var queryString = "SELECT * FROM user WHERE username = " + mysql.escape(username);              //precistimo input
    databaseConnection.query(queryString, function(error, result)
    {
        var res;

        if(result.length < 1)                                                                       //ce v bazi ni uporabnika z vpisanim username
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
                console.log(request.session.user.ID);
                var token = md5(username + Math.random());
                res = { StatusCode : 200, Status : "Sign-in successful", Token : token };
            }
            else
                res = { StatusCode : 403, Status : "Wrong password", Token : null };

            response.json(res);                                                                     //vrnemo response v obliki JSON
        }
    });
});


//localhost:8080/user/sign-up
router.post('/sign-up', function(request, response)
{
    console.log("--SIGN UP--");
    var username    = request.body.username;                                                   //iz poslanega requesta poberemo username, geslo in email
    var password    = request.body.password;
    var email       = request.body.email;

    var salt            = bcrypt.genSaltSync(10);
    var passwordHash    = bcrypt.hashSync(password, salt);                                      //generiramo hash iz gesla v string obliki z salt = 10

    var queryString = "SELECT username FROM user WHERE username = " + mysql.escape(username);
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
                if(!error)
                    res = { StatusCode : 201, Status : "Sign-up successful" };

                response.json(res);
            });
        }
    });
});


//localhost:8080/user/edit
router.post('/edit', function(request, response)
{
    console.log("--EDIT--");
    var username    = request.session.user;                                                   //iz poslanega requesta poberemo username, geslo in email
    var oldPass    = request.body.passwordO;
    var newPass    = request.body.password;

    var salt            = bcrypt.genSaltSync(10);
    var passwordHash    = bcrypt.hashSync(password, salt);                                      //generiramo hash iz gesla v string obliki z salt = 10

    var queryString = "SELECT username FROM user WHERE username = " + mysql.escape(username);
    databaseConnection.query(queryString, function(error, result)
    {
        var res;

        var equals = bcrypt.compareSync(oldPass, result[0].password);

        if(equals)
        {
          queryString = "UPDATE uporabnik SET password = "+ newPass + "WHERE username = "+ username;
          databaseConnection.query(queryString, function(error, result)
          {
              if(!error)
                  res = { StatusCode : 201, Status : "Edit successful" };

              response.json(res);
          });
        }
        else
            res = { StatusCode : 403, Status : "Wrong password", Token : null };

        response.json(res);
    });
});


module.exports = router;
