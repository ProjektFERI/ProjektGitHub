import { Player }			from '../_models/player';
import { Team }			from '../_models/team';

export class APIresponse
{
    StatusCode  : number;
    Status      : string;
    Token       : string;
    UserTeam    : Team;
    Players     : Player[];
}
