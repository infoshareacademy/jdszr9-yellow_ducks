/*
 * zpytanie działa w postgresql
 * z tabeli 'player' na podstawie wartości z kolumny 'player_api_id' są porównywane 
 * wartości z tabeli 'match' ,z kolumny 'home_player_1',
 * następnie z tabeli 'match', z kolumny 'home_team_id' wartości są porównywane
 * z wartościami z tabeli 'team', z kolumny 'id'
*/
select p.id, p.player_api_id,m.home_player_1, p.player_name, m.home_team_id, t.id, t.team_long_name 
from player p 
left join "match" m 
on p.player_api_id  = nullif (m.home_player_1, '')::int
left join team t 
on m.home_team_id = t.id 

select p.id, p.player_api_id, p.player_name, m.home_team_id, t.team_long_name 
from player p 
left join "match" m 
on p.player_api_id  = nullif (m.home_player_1, '')::int
left join team t 
on m.home_team_id = t.id 