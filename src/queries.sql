-- queries.sql

-- 1. do some rudimentary data cleaning by modifying values in a column or columns (such as change '' to NULL, cast types, etc.) … instead of adding the results of the query or queries to report.md, write the motivation for modifying / cleaning your data in this way
Delete from Reports where population = "";
Delete from Reports where violent_crimes = "";
Delete from Reports where code = "";


-- 2. the total number of rows in the database
SELECT count(*) from Reports;

-- 3. show the first 15 rows, but only display 3 columns (your choice)
SELECT state, population, rapes from Reports limit 15;

-- 4. do the same as above, but choose a column to sort on, and sort in descending order
SELECT state, population, rapes from Reports Order by population desc limit 15;

-- 5. add a new column without a default value
ALTER TABLE Reports
ADD COLUMN total_crimes integer;

-- 6. set the value of that new column
UPDATE Reports
set total_crimes = (violent_crimes + homicides + rapes + assaults + robberies);

-- 7. show only the unique (non duplicates) of a column of your choice
SELECT distinct state from Reports;

-- 8. group rows together by a column value (your choice) and use an aggregate function to calculate something about that group (count of all members of the group, the average of a column of the members of the group)
--show the column that is used for grouping AND the result of the aggregate function (so, 2 columns minimum on output)
SELECT state, sum(rapes) as Total_Rapes from Reports GROUP BY state;

-- 9. now, using the same grouping query or creating another one, find a way to filter the query results based on the values for the groups (for example, show all genres that have more than 2 movies in it and only show the genre and the number of movies for that genre).
--you'll use a HAVING clause to do this (covered in the slides on group by)
SELECT state,sum(rapes) as Total_Rapes from Reports GROUP BY state HAVING sum(rapes)>13000;

-- 10. Displays 3 columns, with 2 columns. One column with an aggregate of the value of data in that group and another showing the maximum from those added values. of the data It represents the total crimes committed from 1975 to 2015 in each state in the 2nd column, and the maximum total crimes in a year in a state from 1975 to 2015.
SELECT state, sum(total_crimes), max(total_crimes) as max_crimes_per_year from Reports GROUP BY state;

-- 11. It represents a query that follows from another query. It displays the maximum from a new column created in another sub query. Displays the state with the maximum total number of crimes committed from 1975 to 2015.
SELECT state, max(tot) from (SELECT state, sum(total_crimes)as tot from Reports GROUP BY state) Reports;

--is the same as the query below:
--SELECT state, sum(total_crimes) from Reports GROUP BY state ORDER BY total_crimes desc LIMIT 1;

-- 12. Rounded value of the average of all the values in the column "violent_crimes". This value indicates the average number of violent crimes committed each year from 1975 to 2015.
SELECT round(avg(violent_crimes)) from Reports;