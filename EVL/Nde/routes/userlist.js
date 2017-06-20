var express             = require('express');
var router              = express.Router();

var mysql               = require('mysql');
var database            = require('../database');
var databaseConnection  = database.getDatabaseConnection();                     //povezava do baze


//localhost:8080/userlist/users
router.post('/users', function(request, response)
{
    console.log("--USERLIST--");
    //console.log(request.body.SortOption + " " + request.body.Position);

    var queryString = "SELECT * FROM user";


    console.log(queryString);

    //var queryString = "SELECT * FROM player";
    databaseConnection.query(queryString, function(error, result)
    {
        response.json(result);                                                  //vrnemo vse igralce v bazi
    });
});



module.exports = router;
