select Game, round(sum(Price), 2) as Total
from games
group by Game;