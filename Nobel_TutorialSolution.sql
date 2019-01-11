<!-- SELECT from Nobel Tutorial : -->

<!-- 1. Change the query shown so that it displays Nobel prizes for 1950.-->

Solution : SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950

 <!-- 2. Change the query shown so that it displays Nobel prizes for 1950.-->

 Solution : SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature'

<!-- 3. Show the year and subject that won 'Albert Einstein' his prize.-->

Select yr, subject
FROM nobel
WHERE winner='Albert Einstein'

<!-- 4. Give the name of the 'Peace' winners since the year 2000, including 2000.-->

Select winner
FROM nobel
WHERE subject='Peace'
and yr >=2000;

<!-- 5. Give the name of the 'Peace' winners since the year 2000, including 2000.-->

Select yr, subject, winner
FROM nobel
WHERE subject='Literature'
AND yr between 1980 and 1989

<!-- 6. Show all details of the presidential winners: -->

Theodore Roosevelt
Woodrow Wilson
Jimmy Carter
Barack Obama. -->

Select * FROM nobel
WHERE winner IN ('Theodore Roosevelt', 'Woodrow Wilson', 'Jimmy Carter', 'Barack Obama');

<!-- 7. Show the winners with first name John-->

Select winner from nobel
WHERE winner like 'John%';

<!-- 8.
Show the year, subject, and name of Physics winners for 1980 together with the Chemistry winners for 1984.-->

Select yr, subject, winner
From nobel
where (subject = 'Physics' and yr = 1980) OR (subject = 'Chemistry' and yr = 1984)

<!--9. Show the year, subject, and name of winners for 1980 excluding Chemistry and Medicine -->

SELECT yr, subject, winner
FROM nobel
WHERE yr = 1980 and subject NOT IN ('Chemistry', 'Medicine')

<!-- 10. Show year, subject, and name of people who won a 'Medicine' prize in an early year (before 1910, not including 1910) together with winners of a 'Literature' prize in a later year (after 2004, including 2004)-->

SELECT yr, subject, winner
FROM nobel
WHERE (subject = 'Medicine' and yr < 1910) OR (subject = 'Literature' and yr >= 2004)

<!--11. Find all details of the prize won by PETER GRÜNBERG. -->

Select * FROM nobel
Where winner like 'PETER GR%NBERG'

<!--12. Find all details of the prize won by EUGENE O'NEILL. -->


Select * FROM nobel
Where winner like 'EUGENE O%NEILL'

<!--13. List the winners, year and subject where the winner starts with Sir. Show the the most recent first, then by name order.

SELECT winner, yr, subject 
FROM nobel
WHERE winner like 'Sir%'
ORDER BY yr desc, winner

<!--14. Show the 1984 winners and subject ordered by subject and winner name; but list Chemistry and Physics last.-->

SELECT winner, subject
  FROM nobel
 WHERE yr=1984
 ORDER BY subject IN ('Physics','Chemistry'),subject,winner


                        *_________________________________**********____________________________________*


