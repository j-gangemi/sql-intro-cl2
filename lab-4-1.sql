-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935

select
sum(hits)
from players as play
    inner join stats as stat on stat.player_id = play.id
where play.first_name = "Barry" and play.last_name = "Bonds";

--answer:
-- SELECT SUM(stats.hits)
-- FROM players INNER JOIN stats ON players.id = stats.player_id
-- WHERE players.first_name = 'Barry'
-- AND players.last_name = 'Bonds';