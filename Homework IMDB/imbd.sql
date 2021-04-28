select b.startyear as startyear, avg(r.averagerating) as yearly_avg 
from title_basics b, title_ratings r 
where b.tconst = r.tconst and b.startyear >= '2010' and b.startyear <= '2015' and genres in ('Thriller','Horror','Drama','Sci-Fi') 
group by b.startyear 
order by b.startyear;