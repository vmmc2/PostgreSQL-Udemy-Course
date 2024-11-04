# Section 05 - SQL & PostgreSQL: Retrieving Data from a Table - Select Queries

## ```SELECT``` Queries
* This query is the most used one to retrieve data from a table of a database.
* For example, if one want to retrieve all data from all columns of a table, then the query is very simple:
```SQL
SELECT * FROM database_name; -- This selects all columns from every row of a table from the database.
```
* If one only wants to get all data from certain columns of a table, then all it must be done is the following:
```SQL
SELECT column_name FROM database_name;
```
* It is also possible to select all data from more than one column of a database by separating the columns' name with commas:
```SQL
SELECT column_name_1, column_name_2, column_name_3 FROM database_name;;
```
* A real world example:
```SQL
SELECT first_name, last_name, date_of_birth FROM actors;
```


## ```WHERE``` Clauses
* __It is used to filter the results retrieved by a ```SELECT``` query based on a certain condition(s).__
* It is possible to setup more than one condition by using the ```AND``` keyword.
* Syntax of ```SELECT``` queries that use the ```WHERE``` clause:
```SQL
SELECT column_name FROM table_name
WHERE column_name = 'specific_value';
```
* Real world examples:
```SQL
SELECT * FROM movies
WHERE age_certificate = '15';

SELECT * FROM movies
WHERE age_certificate = '15'
AND movie_lang = 'Chinese';
```
* __It is also possible to change the logical operator being used in a ```WHERE``` clause from ```AND``` to ```OR```.__
* A more complex real world example that uses both ```AND``` and ```OR```:
```SQL
SELECT * FROM movies
WHERE (age_certificate = '18' AND movie_lang = 'English') OR (age_certificate = '15' AND movie_lang = 'Chinese');
```


## Logical/Comparison Operators
* __These operators are: ```>```, ```>=```, ```<```, ```<=```.__
* __One can use there operators in both integers, varchar, char and dates inside ```WHERE``` clauses.__


## ```IN```, ```NOT IN```
* The keyword ```IN``` is usually used inside ```WHERE``` clauses to filter rows whose certain column values are equal to any value of a certain group.
* Example:
```SQL
SELECT column_name_1, column_name_2 FROM table_name
WHERE column_name_1 IN ("value_1", "value_2");
```
* The same thing applies to the keyword ```NOT IN```. It is commonly used inside ```WHERE``` clauses to filter rows whose certain column values are not equal to any value of a certain group.
* Example:
```SQL
SELECT column_name_1, column_name_2 FROM table_name
WHERE column_name_1 NOT IN ("value_1", "value_2");
```
* __Both ```IN``` and ```NOT IN``` can be used with integer values also.__


## ```LIKE```
* This keyword is often used in ```WHERE``` clauses. It is used for pattern recognition, in a very similar way to that of a regex.
* Some examples that illustrate its usage:
```SQL
SELECT column_1, column_2, column_3 FROM table_name
WHERE column_4 LIKE 'P%'

SELECT column_1, column_2, column_3 FROM table_name
WHERE column_4 LIKE 'P_';
```
* __Meaning of the signs presented above:__
  * __```%```: This means any amount (possibly 0) of any characters.__
  * __```_```: This means exactly 1 character of any type.__
* __These signs can be used anywhere inside a string value and any number of times.__


## ```BETWEEN```
* This keyword is used as a shortcut. It can be used with the ```AND``` keyword instead of using the ````<=```` operator.
* __This means that both limits of this keyword are INCLUSIVE.__
* It is generally used in the following way:
```SQL
SELECT column_1, column_2, column_3 FROM table_name
WHERE column_4 BETWEEN value_left AND value_right;
```
* A real-world example is given below:
```SQL
SELECT movie_name, release_date FROM movies
WHERE release_date BETWEEN '1995-01-01' AND '1999-12-31';
```
* __This keyword can be used with any values that can be ordered such as integers, dates, strings, etc. THE INSTRUCTOR RECOMENDS TO USE THIS WITH INTEGERS AND DATES VALUES.__


## ```ORDER```
* __This keyword is responsible for ordering the results of the executed query according to the values of a certain column from the table.__
* Example of simple usage:
```SQL
SELECT column_1, column_2 FROM table_name
ORDER BY column_3;
```
* __IMPORTANT: By default, the values of the chosen column are sorted in ascending order.__
* __IMPORTANT: It is possible to alter this behavior through the use of the ```ASC``` and ```DESC``` keywords. The first one is used to sort the values in ascending order, while the second one is used to sort in descending order.__
* __SIDE NOTE: When sorting the values of a column using ```DESC```, the ```NULL``` values will always appear first.__
* Example of usage of the ```ASC``` and ```DESC``` keywords:
```SQL
SELECT column_1, column_2 FROM table_name
ORDER BY column_3 ASC;

SELECT column_1, column_2 FROM table_name
ORDER BY column_3 DESC;
```
* __Real world example:__
```SQL
SELECT first_name, last_name, date_of_birth FROM actors
ORDER BY first_name ASC;

SELECT actor_id, first_name, last_name, date_of_birth FROM actors
WHERE gender = 'F'
ORDER BY date_of_birth DESC;
```
* __IMPORTANT: If you want to sort the result set based on multiple columns or expressions, you need to place a comma (```,```) between two columns to separate them.__


## ```LIMIT```
* __This keyword is responsible for limiting the amount of rows (records) returned when a query is made to a table from the database.__
* An example of how to use this keyword:
```SQL
SELECT column_1, column_2 FROM table_name LIMIT N; -- N is an integer value greater than 0.
```
* __A real world example that retrieves the movies with the top 3 movies with lowest domestic takings:__
```SQL
SELECT * FROM movie_revenues
ORDER BY domestic_takings ASC
LIMIT 3;
```
* There is also a keyword called ```OFFSET``` that is also commonly used with the ```ORDER BY``` keywords. Its usage is explained below:
```SQL
SELECT * FROM movie_revenues
ORDER BY revenue_id ASC
LIMIT 5 OFFSET 3 -- This will return the entries from 4 to 8 (both inclusive).
```


## ```FETCH```
* __This keyword has a similar usage to that of the ```LIMIT``` keyword.__
* This is also used to return a certain/specific number of rows/records of data.
* The example below shows a very simple case of this usage:
```SQL
-- Using Fetch

SELECT column_1, column_2 FROM table_name
FETCH FIRST N ROW ONLY; -- The N is a positive integer representing the amount of rows/records that should be retrieved by the query.
```
* It is also possible to use the ```OFFSET``` keyword in this scenario. However, the syntax of the query is a bit different.
```SQL
SELECT * FROM movies
OFFSET 8 ROWS
FETCH FIRST 10 ROW ONLY; -- This will start the fetch process from a data row numbered from 9 through 18 (both inclusive).
```


## Distinct Values
* __There is a keyword called ```DISTINCT```. This keyword is responsible for retrieving only the distinct values of a certain column.__
* The example shown below illustrates how to use this syntax:
```SQL
SELECT DISTINCT column_name FROM table_name;
```
* A real world example is shown below:
```SQL
SELECT DISTINCT movie_lang FROM movies
ORDER BY movie_lang ASC;
```
* __It is also possible to select distinct combinations from 2 or more columns. In order to do so, the following must be done:__
```SQL
SELECT DISTINCT movie_lang, age_certificate FROM movies -- Unique combinations of values of the columns "movie_lang" and "movie_certificate".
ORDER BY movie_lang ASC; -- Ordering such combinations by the values of the "movie_lang" column in ascending order.
```