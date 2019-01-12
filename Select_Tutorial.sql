
 /*--SELECT within SELECT Tutorial : */

/*-- 1. List each country name where the population is larger than that of 'Russia'. */

SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')

 /* 2. List all the continents - just once each. */

select name
FROM world
Where continent = 'Europe' AND 
gdp/population > (SELECT gdp/population FROM world
Where name = 'United Kingdom')

/* 3. List the name and continent of countries in the continents containing either Argentina or Australia. Order by name of the country.*/

Select name, continent
FROM world
WHERE continent IN (select continent from world WHERE name IN ('Argentina','Australia'))
order by name

/* 4. Which country has a population that is more than Canada but less than Poland? Show the name and the population. */

SELECT name, population 
FROM world 
WHERE population > (SELECT population FROM world WHERE name = 'Canada') 
AND population < (SELECT population FROM world WHERE name = 'Poland')

/* 5. Show the name and the population of each country in Europe. Show the population as a percentage of the population of Germany. */

select name, CONCAT(ROUND(100*population/(Select population from world where name = 'Germany')) ,'%')
from world 
where continent = 'Europe'


/* 6. Which countries have a GDP greater than every country in Europe? [Give the name only.] (Some countries may have NULL gdp values) */

SELECT name 
From world
Where gdp > ALL(SELECT gdp 
                  from world where continent = 'Europe' and gdp>0 )

/* 7. Find the largest country (by area) in each continent, show the continent, the name and the area: */

SELECT continent, name, area FROM world x
  WHERE area >=ALL
    (SELECT area FROM world y
 WHERE x.continent = y.continent AND area>0)

/* 8. List each continent and the name of the country that comes first alphabetically. */

SELECT continent, name 
FROM world x 
WHERE name <= ALL(SELECT name 
FROM world y WHERE x.continent = y.continent)

*_________________________*********************************_________________________________________