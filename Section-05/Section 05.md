# Section 05 - SQL & PostgreSQL: Retrieving Data from a Table - Select Queries

## Select Queries
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