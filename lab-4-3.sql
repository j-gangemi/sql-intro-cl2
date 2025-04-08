-- Who hit the most home runs in 2019, and what team did they play for?

select
    teams.name
    , players.first_name
    , players.last_name
    , max(stats.home_runs)
from teams
    inner join stats on teams.id = stats.team_id
    inner join players on stats.player_id = players.id
where year = 2019
group by 1,2,3
order by 4 desc
limit 1

-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+


