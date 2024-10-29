# Section 04 - SQL and PostgreSQL: Data Manipulation Language

## Inserting Data Into a Table
* The query used to insert data (a row) into a table from a PostgreSQL database is very simples and intuitive as shown below:
```SQL
INSERT INTO table_name(column_1, column_2, column_3)
VALUES('dummy_value_1', 'dummy_value_2', 42);
```
* A real example is shown below:
```SQL
INSERT INTO examples (first_name, last_name, email, nationality, age)
VALUES('David', 'Mitchell', 'dmitch@gmail.com', 'GBR', 43);
```
* __Some things that are important to mention:__
  * If the data type of a column is ```SERIAL```, then there is no need to put a value to it. It will automatically be added (remember that the database automatically increases values of this type when they are inserted into the database). The default initial value is ```1```.
  * If the data type of a column is ```VARCHAR```, ```CHAR``` or ```TEXT```, then its value must be enclosed by single quotes ```''```.
  * It is also possible to insert several rows of data into a table by just using commas to separate the rows, as shown below:
  ```SQL
  INSERT INTO examples (first_name, last_name, email, nationality, age)
  VALUES('Emily', 'Watson', 'ewatson@gmail.com', 'USA', 29),
        ('Theo', 'Scott', 'tscott@gmail.com', 'AUS', 33),
        ('Emily', 'Smith', 'esmith@gmail.com', 'GBR', 29),
        ('Jim', 'Burr', 'jburr@gmail.com', 'USA', 54);
  ```


## Updating Data From a Table
* The command to update data from a table is very simple:
```SQL
UPDATE table_name
SET column_name = 'new_value'
WHERE column_name = 'old_value'; -- Usually it is a good practice to use the column that is a primary key to avoid undesired side effects.
```
* Real world example:
```SQL
UPDATE examples
SET email = 'davidmitchell@gmail.com'
WHERE example_id = 1;
```
* It is also possible to update several rows with a single query by using conditions in the query:
```SQL
-- Updating multiple rows that satisfy one certain condition.
UPDATE examples
SET nationality = 'CAN'
WHERE nationality = 'USA';
```
* Lastly, it is also possible to change multiple column values of a certain row from a table by using the following:
```SQL
-- Updating multiple columns of a row at once, given a certain condition.
UPDATE examples
SET first_name = 'James', age = 55
WHERE example_id = 5;
```