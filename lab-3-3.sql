-- In the modern era (1960-present), how many regular season games did the best team win each season?
-- Challenge: Try to include the team's name in the results. Is it accurate?


select
    year
    , name
    , wins
from 
(
select
    year
    , name
    , wins
from teams
where year >= 1960
group by year, name
order by year, wins desc
)
group by year
;


-- select
-- year
-- , name
-- , max(wins)
-- from teams
-- where year >= 1960
-- group by year
-- order by max(wins) desc;

-- Expected result: 61 rows, starting with
--
-- +------+-------------------------------+-----------+
-- | 2001 | Seattle Mariners              | 116       |
-- | 1998 | New York Yankees              | 114       |
-- | 1969 | Baltimore Orioles             | 109       |
-- | 1961 | New York Yankees              | 109       |
-- | 2018 | Boston Red Sox                | 108       |
-- | 1986 | New York Mets                 | 108       |
-- | 1975 | Cincinnati Reds               | 108       |
-- | 1970 | Baltimore Orioles             | 108       |
-- | 2019 | Houston Astros                | 107       |
-- | 2004 | St. Louis Cardinals           | 105       |


