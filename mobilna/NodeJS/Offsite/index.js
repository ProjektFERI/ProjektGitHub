var express         = require('express');                       //express library
var bodyParser      = require('body-parser');                   //parser podatkov poslanih na streznik -> ko dobimo zahtevo dostopamo z req.body
var cookieParser    = require('cookie-parser');                 //za razpoznavanje cookies
var session         = require('express-session');               //za delo s sejo

//var cors         = require('cors'); 


var app  = express();                                           //instanca aplikacije z express
var port = 8080;                                                //port na katerem tece streznik


app.use(bodyParser.json());                                                     // knjiznica, ki nam razparsa json na vhodu
app.use(bodyParser.urlencoded({ extended: true }));                             // knjiznica, ki nam razparsa navadni url encoding
app.use(cookieParser());                                                        //parsanje cookies
app.use(session({secret: "root", saveUninitialized: true, resave: true}));      //dobimo na voljo request.session, ki nam sluzi kot $_SESSION v php, za spremenljivke


//funkcija ki se izvede ob vsaki zahtevi
app.use(function(request, response, next)
{
	var user = request.session.user;											//pogledamo, ce je uporabnik, ki dela zahtevo slučajno avtenticiran/prijavljen
    console.log("Prijavljen uporabnik: " + user);								//...to je za test, mogoce pride sem se kaj...

	console.log("Zahteva iz: " + request.ip);
	//response.set('Content-Type',"UTF-8");
	next();
});

//app.use(cors());


//dovolimo zahteve iz drugih domen
app.all('/*', function(request, response, next)
{
	//response.header("Access-Control-Allow-Origin", "*");
    response.header("Access-Control-Allow-Origin", "http://localhost:8100");
    response.header("Access-Control-Allow-Credentials", "true");

    response.header("Access-Control-Allow-Headers", "Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
    next();
});


//routes za API klice
var user = require('./routes/user');
app.use('/user', user);

var fantasy = require('./routes/fantasy');
app.use('/fantasy', fantasy);

var statistics = require('./routes/statistics');
app.use('/statistics', statistics);

var userlist = require('./routes/userlist');
app.use('/userlist', userlist);

var showteam = require('./routes/showteam');
app.use('/showteam', showteam);


//----------- ZACETEK POSLUSANJA -----------

app.listen(port);
console.log('Strežnik teče na: ' + port);
