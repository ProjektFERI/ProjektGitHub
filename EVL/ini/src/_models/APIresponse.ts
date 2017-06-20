import { Team }     from './team';
import { Player }   from './player';

export class APIresponse
{
    StatusCode  : number;
    Status      : string;
    Token       : string;
    UserTeam    : Team;
    Players     : Player[];
}
