select Date, Game, Items, Bonuses
from games
where Bonuses = 'x2 bonus*' -- only show rows where a x2 bonus was applied
order by Date desc;


select Date, Game, Items, Bonuses
from games
where Bonuses = 'x2 bonus*' and (Game like '%Honkai%' or Game like '%Zenless%')-- only show rows where a x2 bonus was applied & only show Honkai or Zenless related games
order by Date desc;

