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