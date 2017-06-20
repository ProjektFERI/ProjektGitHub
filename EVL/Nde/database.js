var mysql = require('mysql');

module.exports = {

    getDatabaseConnection : function()
    {
        var databaseConnection = mysql.createConnection(                //povezava s podatkovno bazo
        {
            host:       "localhost",
            user:       "root",
            password:   "root",
            database:   "offsite"
        });
        databaseConnection.connect(function(error)
        {
            if(!error)
                console.log("Connected to Offsite!");
            else
                console.log("Error connecting to database: " + error);
        });

        return databaseConnection;
    }
}
