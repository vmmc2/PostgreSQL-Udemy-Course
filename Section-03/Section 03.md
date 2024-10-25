# Section 03 - SQL and PostgreSQL: Data Definition Language - Creating Our Movie Database

## What is Data Definition Language?
* A subset of SQL, used to setup the structure of databases.

## Database Tables
* Each database table is composed of rows and columns. The rows are also called entries/records, while the columns are called fields/attributes.
* Each column has a defined data type associated which defines what type of data that specific column can contain.
* __Each row of data should be unique. In other words, the table must not contain duplicate entries.__
* __Each column should just contain only one value per row.__
* __In every table there is a column called ```ID``` of type integer. Such column works as a primary key. A primary key is responsible for exclusively identify each row inside the table.__
* __In a relational database, tables can be linked together. In such type of database, 2 tables are linked together through the use of a primary key column and a foreign key column.__

## Data Types
* Here, we'll go through just the most common data types used in SQL.

### Numeric Data Types
* ```INT```: Used to represent whole numbers (integer numbers). Useful when dealing with __age or quantity, for example.__
* ```NUMERIC(P,S)```: Used to represent decimal numbers (floating-point numbers). Useful when dealing with __height or price, for example.__
  * ```P``` is used to represent the maximum amount of digits that this column can contain.
  * ```S``` is used to represent the maximum amount of decimal places that this column can contain.
* ```SERIAL```: This is an auto-incrementing whole number (starting from the number ```1```). Useful when dealing __with IDs (primary keys).__
  * This data type is specific of PostgreSQL.

### String Data Types
* ```CHAR(N)```: Used for fixed length strings where N represents its length. Useful when dealing with __gender or state, for example.__
* ```VARCHAR(N)```: Used for varying length strings where N represents the maximum possible length. Useful when dealing with __names or emails, for example.__
* ```TEXT```: Used for varying length strings where there is no limit of characters. Useful when dealing with __comments or reviews, for example.__

## Time Data Types
* ```TIME```: Its format is ```HH:MM:SS```. According to the author, there isn't an obvious case of when to use this.
* ```DATE```: Its format is ```YYYY-MM-DD```. Useful when dealing with __birth dates or release dates.__
* ```TIMESTAMP```: Its format is ```YYYY-MM-DD HH:MM:SS```. Useful when dealing with __order time.__

### Other Data Types
* ```BOOL```: This data type can only store 2 values (true or false). Useful when dealing with __in stock question, for example.__
* ```ENUM```: This data type can hold one value from a list of values input by the user. Useful when dealing with __genders, for example.__