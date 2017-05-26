export class Team
{
    Name : string;
    Link : string;
}


export class tPlayer
{
    Name : string;
    Link : string;
}

export class Player
{
    Name            : string;
    Position        : string;
    Club            : string;
    Photo           : string;
    Overall         : number;
    Value           : number;
    Skills          : number;
    Crossing        : number;
    Finishing       : number;
    Heading         : number;
    ShortPassing    : number;
    Volleys         : number;
    Dribbling       : number;
    Curve           : number;
    FreeKicks       : number;
    LongPassing     : number;
    BallControll    : number;
    Acceleration    : number;
    SprintSpeed     : number;
    Agility         : number;
    Reactions       : number;
    Balance         : number;
    ShotPower       : number;
    Jumping         : number;
    Stamina         : number;
    Strength        : number;
    LongShots       : number;
    Aggression      : number;
    Interceptions   : number;
    Positioning     : number;
    Vision          : number;
    Penalties       : number;
    Composure       : number;
    Marking         : number;
    StandTackle     : number;
    SlideTackle     : number;
    GK_diving       : number;
    GK_handling     : number;
    GK_kicking      : number;
    GK_positioning  : number;
    GK_reflexes     : number;

    toString()
    {
        var stats : string;
        stats += this.Name + "\n" + "Position: " + this.Position + "\nClub: " + this.Club + "\nOverall: " + this.Overall + "\nValue: " + this.Value + "\nSkills: " + this.Skills
                + "\nCrossing: " + this.Crossing + "\nFinishing: " + this.Finishing + "\nHeading: " + this.Heading + "\n....";

        return stats;
    }
}
