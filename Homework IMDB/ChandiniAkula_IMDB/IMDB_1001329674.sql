/*1a. Retrieve by the years (for the period 2000 to 2009),  the count of movies produced in a genre 
(choose one from Comedy, Drama, Horror, Sci-Fi) whose rating is greater than the average rating of movies in that genre for that year. */
select b.startyear as start_year, b.genres as genres, count(*) as above_avg 
from title_basics b, title_ratings r 
where b.tconst = r.tconst and b.genres='Comedy' and b.startyear >= '2000' and b.startyear <= '2009' and b.titletype ='movie'
and r.averagerating > (select avg(averagerating) 
from title_basics bb, title_ratings rr 
where bb.tconst = rr.tconst and b.genres = bb.genres and b.startyear = bb.startyear and bb.titletype ='movie')
group by b.startyear,b.genres
order by b.startyear;

/*1b. For the above years, retrieve the total number of movies produced in each genre. */
select startyear as start_year, genres, count(*) as Movies_produced 
from title_basics 
where genres = 'Comedy' and startyear >= '2000' and startyear <= '2009' and titletype ='movie'
group by startyear,genres
order by startyear;

/*2a. Retrieve the average ratings of the movies for each year during 2010 and 2015 for the genres Thriller, Drama, Horror, and Sci-Fi. (according to the latest results file)*/
select b.startyear as startyear, avg(r.averagerating) as yearly_avg 
from title_basics b, title_ratings r 
where b.tconst = r.tconst and b.startyear >= '2010' and b.startyear <= '2018' and genres in ('Thriller','Horror','Drama','Sci-Fi') and b.titletype ='movie'
group by b.startyear 
order by b.startyear;

/*2b.  Retrieve the average ratings of the movies by genre for each year during 2010 and 2019 for each genres, Thriller, Drama, Horror, and Sci-Fi. (according to the latest results file)*/
select b.startyear as startyear, b.genres as genres, avg(r.averagerating) as yearly_avg 
from title_basics b, title_ratings r 
where b.tconst = r.tconst and b.startyear >= '2010' and b.startyear <= '2018' and genres in ('Thriller','Horror','Drama','Sci-Fi') and b.titletype ='movie'
group by b.startyear, b.genres
order by b.startyear;
