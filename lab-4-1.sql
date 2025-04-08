-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935

select
sum(hits)
from players as play
    inner join stats as stat on stat.player_id = play.id
where play.first_name = "Barry" and play.last_name = "Bonds";
