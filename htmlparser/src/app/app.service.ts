import { Injectable }   from '@angular/core';
import { Http }         from '@angular/http';

import { Observable }   from 'rxjs/Rx';
import 'rxjs/add/operator/map';
import * as htmlparser  from 'htmlparser2';

import { Team, tPlayer, Player } from './app.classes';

@Injectable()
export class AppService
{
    teams = [];
    players = [];
    public htmldata     = "";
    baseUrl = "https://cors-anywhere.herokuapp.com/https://sofifa.com";
    player : Player;

    sql = [];

    constructor(private http : Http)
    {
        console.log("AppServiceConstructor");
    }

    loadDataTeams(url : string)
    {
        var html : string;

        var subscription = this.http.get(url)
                                .map(response => response.text())
                                .subscribe(data => html = data, error => console.log(error), () => {
                                    this.parseTeams(html)
                                    //this.parsePlayers(html);
                                    //this.parsePlayer(html);
                                });
    }


    loadDataPlayers(url : string)
    {
        var html : string;

        var subscription = this.http.get(url)
                                .map(response => response.text())
                                .subscribe(data => html = data, error => console.log(error), () => {
                                    //this.parseTeams(html)
                                    this.parsePlayers(html);
                                    //this.parsePlayer(html);
                                });
    }


    loadDataPlayer(url : string)
    {
        var html : string;

        var subscription = this.http.get(url)
                                .map(response => response.text())
                                .subscribe(data => html = data, error => console.log(error), () => {
                                    //this.parseTeams(html)
                                    //this.parsePlayers(html);
                                    this.parsePlayer(html);
                                });
    }


    parseTeams(html : string)
    {
        var td = 0;
        var teams = [];
        var team = new Team();
        var read = true;

        var parser = new htmlparser.Parser({
            onopentag: (name, attributes) =>
            {
                if(name === "td" )
                {
                    //console.log("START td");
                    td++;
                }
                else if(name === "a" && attributes != null && td === 1)
                {
                    //console.log(attributes.href);
                    //this.teams.push(attributes.href);
                    read = true;
                    team = new Team();
                    team.Link = this.baseUrl + attributes.href;
                }
            },
            ontext: (text) =>
            {
                if(td === 1 && read)
                {
                    team.Name = text;
                    //console.log(text);
                }
            },
            onclosetag: (name) =>
            {
                if(name === "td" && td===2)
                {
                    //console.log("END td");
                    this.teams.push(team);
                    td = 0;
                }
                else if(name === "a")
                    read = false;
            }
        }, {decodeEntities: true});
        parser.write(html);
        parser.end();
    }


    parsePlayers(html : string)                                 //html je vsebina iz url: https://sofifa.com/team/11
    {
        var tplayer = new tPlayer();

        var konec = false;
        var h5 = 0;
        var tr = 0;
        var td = 0;
        var div = 0;
        var a = 0;

        var parser = new htmlparser.Parser({
            onopentag: (name, attributes) =>
            {
                if(!konec)
                {
                    if(name === "tr" && tr === 0 && attributes !== null)
                    {
                        //console.log("START tr");
                        tr++;
                    }
                    else if(name === "td" && tr === 1 && td === 0)
                    {
                        //console.log("START td");
                        td++;
                    }
                    else if(name === "td" && tr === 1 && td === 1)
                    {
                        //console.log("START td2");
                        td++;
                    }
                    else if(name === "div" && tr === 1 && td === 2)
                    {
                        //console.log("START div");
                        div++;
                    }
                    else if(name === "a" && tr === 1 && td === 2 && div === 1 && a === 0)
                    {
                        //console.log("START a1");
                        a++;
                    }
                    else if(name === "a" && tr === 1 && td === 2 && div === 1 && a === 1)
                    {
                        tplayer = new tPlayer();
                        tplayer.Name = attributes.title;
                        tplayer.Link = this.baseUrl + attributes.href;

                        this.players.push(tplayer);

                        //this.players.push(attributes.href + " | " + attributes.title);
                        //console.log(attributes.href);
                        //console.log(attributes.title);
                    }
                    else if(name === "h5")
                        h5++;
                }
            },
            ontext: (text) =>
            {
                if(h5 === 1)
                    if(text === "Loaned out")
                        konec = true;
            },
            onclosetag: (name) =>
            {
                if(name === "tr")
                {
                    console.log("END tr");
                    tr = td = div = a = 0;
                }
                else if(name === "h5")
                    h5 = 0;
            }
        }, {decodeEntities: true});
        parser.write(html);
        parser.end();
    }


    parsePlayer(html : string)                                  //html je vsbina iz url: https://sofifa.com/player/195864
    {
        var player = new Player();

        var divPlayer = 0;
        var h1 = 0;
        var divMeta = 0;
        var position = 0;

        var divStats = 0;
        var overall_value = 0;
        var overall = 0;
        var value = 0;

        var divTeams = 0;
        var skills = 0;
        var tdTeams = 0;
        var team = 0;

        var divCard = 0;
        var label = 0;
        var read = true;


        var parser = new htmlparser.Parser({
            onopentag: (name, attributes) =>
            {
                if(name === "h1")
                    h1++;
                else if(name === "div" && attributes.class === "player")
                {
                    //console.log("Smo pri class=player");
                    divPlayer++;
                }
                else if(name === "img" && divPlayer === 1)
                {
                    console.log(attributes.src);
                }
                else if(name === "div" && attributes.class === "meta")          //ce smo v <div class="meta" >
                {
                    divMeta++;
                    //console.log("Smo pri class=meta");
                }
                else if(name === "span" && position === 1 && divMeta === 1)     //ce smo pri pri poziciji <span class="pos ..." >
                {
                    position++;
                    //console.log("Smo pri prvem <span class=pos" + attributes.class);
                }

                else if(name === "div" && attributes.class === "stats")
                {
                    divStats++;
                    //console.log("Smo pri class=stats");
                }
                else if(name === "td" && divStats === 1)
                {
                    overall_value++;
                }
                else if(name === "span" && overall_value === 1)
                {
                    overall++;
                }
                else if(name === "span" && overall_value === 3)
                {
                    value++;
                }

                else if(name === "div" && attributes.class === "teams")
                {
                    divTeams++;
                }
                else if(name === "td" && divTeams === 1)
                {
                    tdTeams++;
                }
                else if(name === "a" && tdTeams === 3)
                {
                    team++;
                }

                else if(name === "div" && attributes.class === "card")
                {
                    divCard++;
                }
                else if(name === "span" && divCard > 0)
                {
                    label++;
                    read = true;
                }

            },
            ontext: (text) =>
            {
                if(h1 === 1)
                {
                    var temp = text.split(" (");            //splitamo text Paul Pogba (ID: 123457) z " (" da ostane samo ime na prvem indexu
                    player.Name = temp[0];                  //!!! NAME

                    player.Photo = "https://cdn.sofifa.org/17/players/";
                    var pos = temp[1].search("[0-9]+");
                    var url = temp[1].substring(pos, temp[1].length - 1);
                    player.Photo += url + ".png";                           //!!! PHOTO
                    //console.log(player.Name);
                }

                else if(position === 2)
                {
                    //console.log(text);
                    //console.log("Pozicija: " + this.determinePosition(text));
                    position++;

                    player.Position = this.determinePosition(text);         //!!! POSITION
                }

                else if(overall_value === 1 && overall === 1)
                {
                    //console.log("overall: " + text);
                    overall++;

                    player.Overall = text;                                  //!!! OVERALL
                }
                else if(overall_value === 3 && value === 1)
                {
                    //console.log("value: " + text)
                    value++;

                    var val = text.split("€");                              //string z € in M preoblikujemo v float

                    if(val[1].charAt(val[1].length-1) == 'M')
                    {
                        val = val[1].split("M");
                        var pval = val[0];
                        player.Value = pval;                                //!!! VALUE
                    }
                    else
                    {
                        val = val[1].split("K");
                        var pval = val[0];
                        player.Value = pval / 1000;
                    }
                    //player.Value = pval;
                    //console.log(pval);
                }

                else if(skills === 4)
                {
                    skills++;

                    var pos = text.search("[0-9]");
                    player.Skills = text.charAt(pos);                       //!!! SKILLS
                    //console.log("Skills: " + player.Skills);
                }
                else if(tdTeams === 3 && team === 1)
                {
                    //console.log(text);
                    player.Club = text;                                     //!!! CLUB
                    team++;
                }

                else if(divCard === 1 && read)
                {
                    if(label === 1)
                    {
                        player.Crossing = text;
                        //label++;
                        read = false;
                    }
                    else if(label === 2)
                    {
                        player.Finishing = text;
                        //label++;
                        read = false;
                    }

                    else if(label === 3)
                    {
                        player.Heading = text;
                        //label++;
                        read = false;
                    }
                    else if(label === 4)
                    {
                        player.ShortPassing = text;
                        //label++;
                        read = false;
                    }
                    else if(label === 5)
                    {
                        player.Volleys = text;
                        //label++;
                        read = false;
                    }
                }
                else if(divCard === 2 && read)
                {
                    if(label === 6)
                    {
                        player.Dribbling = text;
                        //label++;
                        read = false;
                    }
                    else if(label === 7)
                    {
                        player.Curve = text;
                        //label++;
                        read = false;
                    }
                    else if(label === 8)
                    {
                        player.FreeKicks = text;
                        //label++;
                        read = false;
                    }
                    else if(label === 9)
                    {
                        player.LongPassing = text;
                        //label++;
                        read = false;
                    }
                    else if(label === 10)
                    {
                        player.BallControll = text;
                        //label++;
                        read = false;
                    }
                }
                else if(divCard === 3 && read)
                {
                    if(label === 11)
                    {
                        player.Acceleration = text;
                        //label++;
                        read = false;
                    }
                    else if(label === 12)
                    {
                        player.SprintSpeed = text;
                        //label++;
                        read = false;
                    }
                    else if(label === 13)
                    {
                        player.Agility = text;
                        //label++;
                        read = false;
                    }
                    else if(label === 14)
                    {
                        player.Reactions = text;
                        //label++;
                        read = false;
                    }
                    else if(label === 15)
                    {
                        player.Balance = text;
                        //label++;
                        read = false;
                    }
                }
                else if(divCard === 4 && read)
                {
                    if(label === 16)
                    {
                        player.ShotPower = text;
                        //label++;
                        read = false;
                    }
                    else if(label === 17)
                    {
                        player.Jumping = text;
                        //label++;
                        read = false;
                    }
                    else if(label === 18)
                    {
                        player.Stamina = text;
                        //label++;
                        read = false;
                    }
                    else if(label === 19)
                    {
                        player.Strength = text;
                        //label++;
                        read = false;
                    }
                    else if(label === 20)
                    {
                        player.LongShots = text;
                        //label++;
                        read = false;
                    }
                }
                else if(divCard === 5 && read)
                {
                    if(label === 21)
                    {
                        player.Aggression = text;
                        //label++;
                        read = false;
                    }
                    else if(label === 22)
                    {
                        player.Interceptions = text;
                        //label++;
                        read = false;
                    }
                    else if(label === 23)
                    {
                        player.Positioning = text;
                        //label++;
                        read = false;
                    }
                    else if(label === 24)
                    {
                        player.Vision = text;
                        //label++;
                        read = false;
                    }
                    else if(label === 25)
                    {
                        player.Penalties = text;
                        //label++;
                        read = false;
                    }
                    else if(label === 26)
                    {
                        player.Composure = text;
                        //label++;
                        read = false;
                    }
                }
                else if(divCard === 6 && read)
                {
                    if(label === 27)
                    {
                        player.Marking = text;
                        //label++;
                        read = false;
                    }
                    else if(label === 28)
                    {
                        player.StandTackle = text;
                        //label++;
                        read = false;
                    }
                    else if(label === 29)
                    {
                        player.SlideTackle = text;
                        //label++;
                        read = false;
                    }
                }
                else if(divCard === 7 && read)
                {
                    if(label === 30)
                    {
                        player.GK_diving = text;
                        //label++;
                        read = false;
                    }
                    else if(label === 31)
                    {
                        player.GK_handling = text;
                        //label++;
                        read = false;
                    }
                    else if(label === 32)
                    {
                        player.GK_kicking = text;
                        //label++;
                        read = false;
                    }
                    else if(label === 33)
                    {
                        player.GK_positioning = text;
                        //label++;
                        read = false;
                    }
                    else if(label === 34)
                    {
                        player.GK_reflexes = text;
                        //label++;
                        read = false;
                    }
                }
            },
            onclosetag: (name) =>
            {
                if(name === "h1")
                    h1 = 0;

                else if(name === "div" && divMeta === 1)
                {
                    divMeta = 0;
                }

                else if(name === "a" && divMeta === 1)                    //ce smo pri prvem <span class="pos ..." >
                {
                    position++;
                }

                else if(name === "div" && divStats === 1)
                {
                    divStats = 0;
                }

                else if(name === "div" && divTeams === 1 && tdTeams === 4)
                {
                    divTeams = 0;
                }
                else if(name === "label" && divTeams === 1)
                {
                    skills++;
                }

                /*else if(name === "div" && divCard === 8)
                {
                    divCard++;
                }*/

            }
        }, {decodeEntities: true});
        parser.write(html);
        parser.end();

        console.log(player);
        this.player = player;
        this.sql.push(this.generateSql(player));
    }


    determinePosition(pos : string)
    {
        if(pos == "GK")
            return "GK";
        else if(pos == "RB" || pos == "CB" || pos == "LB" || pos == "RWB" || pos == "LWB")
            return "DEF";
        else if(pos == "CDM" || pos == "CM" || pos == "CAM" || pos == "LM" || pos == "RM")
            return "MID";
        else
            return "FWD";
    }


    generateSql(player : Player)
    {
        var sql = "INSERT INTO player (name, position, club, photo, overall, value, skills, crossing, finishing, heading, short_passing, volleys, dribbling, curve, free_kicks, ";
            sql += "long_passing, ball_controll, acceleration, sprint_speed, agility, reactions, balance, shot_power, jumping, stamina, strength, long_shots, aggression, interceptions, ";
            sql += "positioning, vision, penalties, composure, marking, stand_tackle, slide_tackle, GK_diving, GK_handling, GK_kicking, GK_positioning, GK_reflexes) ";
            sql += "VALUES ('" + player.Name + "', '" + player.Position + "', '" + player.Club + "', '" + player.Photo + "', " + player.Overall + ", " + player.Value + ", ";
            sql += player.Skills + ", " + player.Crossing + ", " + player.Finishing + ", " + player.Heading + ", " + player.ShortPassing + ", " + player.Volleys + ", " + player.Dribbling + ", ";
            sql += player.Curve + ", " + player.FreeKicks + ", " + player.LongPassing + ", " + player.BallControll + ", " + player.Acceleration + ", " + player.SprintSpeed + ", " + player.Agility + ", ";
            sql += player.Reactions + ", " + player.Balance + ", " + player.ShotPower + ", " + player.Jumping + ", " + player.Stamina + ", " + player.Strength + ", " + player.LongShots + ", " + player.Aggression + ", ";
            sql += player.Interceptions + ", " + player.Positioning + ", " + player.Vision + ", " + player.Penalties + ", " + player.Composure + ", " + player.Marking + ", " + player.StandTackle + ", ";
            sql += player.SlideTackle + ", " + player.GK_diving + ", " + player.GK_handling + ", " + player.GK_kicking + ", " + player.GK_positioning + ", " + player.GK_reflexes + ")";

        return sql;
    }
}
