CREATE DATABASE EXCEL_PROJECT;
USE EXCEL_PROJECT;
SELECT * FROM blockbusters;

-- 1) Write a query that displays all movies released in 2019 and returns all their information.
select * from blockbusters where release_year ='2019' ;

-- 2) Write a query that has rating PG-13 and return the name of the film name and the budget of the film.
select film_title,film_budget from blockbusters where mpaa_rating = 'PG-13' ;

-- 3) Write a query in which how many movies were released in 2018.
select release_year,count(*) from blockbusters where release_year ='2018' group by release_year having count(release_year);

-- 4) Write a query containing domestic distributor Walt Disney and how many movies he has released.
SELECT COUNT(*) AS count_of_movies FROM blockbusters WHERE domestic_Distributor = 'Walt Disney ';

-- 5) Write a query that returns all movies after 2009.
select * from blockbusters where release_year >'2009' ;

-- 6) Write a query that shows how many action movies are in genre 1.
select count(*)as action_movies from blockbusters where genre_1 ="action";

-- 7) Write a query that shows how many comedy movies are in genre_1 and how many adventure movies are in genre_2
SELECT COUNT(CASE WHEN Genre_1 = 'Comedy' THEN 1 END) AS ComedyCount,COUNT(CASE WHEN Genre_2 = 'Adventure' THEN 1 END) AS AdventureCount FROM blockbusters;

-- 8) Write a query showing the average budget of the film.
select avg(film_budget) from blockbusters ;

-- 9)Write a query that should have an imdub_rating of 7 and return its full information.
select * from blockbusters where imdb_rating ="7" ;

-- 10) Write a Curie in which the number of film_budget is less than 500000.
select film_budget from blockbusters where film_budget < '5000000' ;

-- 11) Write a query in  the first character of film_total is "a".
SELECT * FROM blockbusters WHERE SUBSTRING(film_title, 1, 1) = 'a';

-- 12) Write a query in which the first term of film_distributor is 'universe'.
SELECT * FROM blockbusters where domestic_distributor like 'u%%%';
