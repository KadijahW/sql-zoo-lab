-- This is a comment in sql code
SELECT population FROM world
  WHERE name = 'Germany'

  SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');

  SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000

 -- Some questions concerning basic SQL statements

name	region	area	population	gdp
Afghanistan	South Asia	652225	26000000	
Albania	Europe	28728	3200000	6656000000
Algeria	Middle East	2400000	32900000	75012000000
Andorra	Europe	468	64000	
...
1. Select the code which produces this table
name	population
Bahrain	1234571
Swaziland	1220000
Timor-Leste	1066409
FROM world

SELECT name, population
  FROM world
 WHERE population BETWEEN 1000000 AND 1250000

2. Pick the result you would obtain from this code:
      SELECT name, population
      FROM world
      WHERE name LIKE "Al%"

Table-E
Albania	3200000
Algeria	32900000

3. Select the code which shows the countries that end in A or L
SELECT name FROM world
 WHERE name LIKE '%a' OR name LIKE '%l'

4. Pick the result from the query
SELECT name,length(name)
FROM world
WHERE length(name)=5 and region='Europe'
name	length(name)
Italy	5
Malta	5
Spain	5

5. Here are the first few rows of the world table:
name	region	area	population	gdp
Afghanistan	South Asia	652225	26000000	
Albania	Europe	28728	3200000	6656000000
Algeria	Middle East	2400000	32900000	75012000000
Andorra	Europe	468	64000	
...
Pick the result you would obtain from this code:
SELECT name, area*2 FROM world WHERE population = 64000
Andorra	936

6. Select the code that would show the countries with an area larger than 50000 and a population smaller than 10000000
SELECT name, area, population
  FROM world
 WHERE area > 50000 AND population < 10000000

7. Select the code that shows the population density of China, Australia, Nigeria and France
 
SELECT name, population/area
  FROM world
 WHERE name IN ('China', 'Nigeria', 'France', 'Australia')

 Observe the result of running this SQL command to show the name, continent and population of all countries.
SELECT name, continent, population FROM world

Show the name for the countries that have a population of at least 200 million. 200 million is 200000000, there are eight zeros.
SELECT name FROM world
WHERE population > 200000000 

Give the name and the per capita GDP for those countries with a population of at least 200 million.
SELECT name, GDP/population
FROM world
WHERE population > 200000000

Show the name and population in millions for the countries of the continent 'South America'. Divide the population by 1000000 to get population in millions.
SELECT name,  population/1000000
FROM world
WHERE continent = 'South America' 

Show the name and population for France, Germany, Italy
select name, population
from world
where name IN ('France', 'Germany', 'Italy')