-- What are the first and last names of the players who 
-- played for the 2020 Chicago Cubs?

select
    players.first_name
    , players.last_name
    , teams.name
    , teams.year
from teams
    inner join stats on teams.id = stats.team_id
    inner join players on stats.player_id = players.id
where teams.name = "Chicago Cubs"
    AND teams.year = 2020

--answer
--SELECT players.first_name, players.last_name
--FROM stats 
--  INNER JOIN teams ON teams.id = stats.team_id
--  INNER JOIN players ON players.id = stats.player_id
--WHERE teams.year = 2020
--AND teams.name = "Chicago Cubs";

-- Hint: combine WHERE clauses using AND, e.g.
-- WHERE column1 = expression1
-- AND column2 = expression2

-- Expected result: 47 rows starting with
--
-- +------------+-----------+
-- | Jason      | Adam      |
-- | Albert     | Almora    |
-- | Adbert     | Alzolay   |
-- | Javier     | Baez      |
-- | David      | Bote      |
-- | Rex        | Brothers  |
-- | Kris       | Bryant    |
-- | Victor     | Caratini  |
-- | Andrew     | Chafin    |
-- | Tyler      | Chatwood  |
-- | Willson    | Contreras |
-- | Yu         | Darvish   |
-- | Matt       | Dermody   |
-- | Billy      | Hamilton  |
-- | Ian        | Happ      |


