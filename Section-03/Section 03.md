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

## Primary Keys and Foreign Keys

### Primary Keys
* __Is a column (or a combination for columns) responsible for uniquely identifying a entry/record/row inside a table.__
* __The value of a primary key must be unique and must also be different than null.__
* There can only be 1 primary key (e.g., 1 column of primary key) per table.
* __Primary keys are not compulsory but are highly advised. Use them whenever possible.__

### Foreign Keys
* A foreign key is used to perform a link between 2 tables. In other words, a foreign key is used to establish a relation between tables.
* __A foreign key is a column where its values match the values of a primary key column in another table.__
* When this happens, the table with the primary key is commonly called the __parent table__ while the table with the foreign key is commonly called the __child table.__
* __A table can contain multiple foreign keys. However, it can only contain only one primary key.__

## Unique, Not Null, Check Constraints
* Constraints are conditions that we can put on columns in order to make them only accept certain determined values.

### Unique
* __Ensures that a column can only contain unique values.__
* __It throws an error if a duplicate value is inserted into the column marked as ```UNIQUE```.__
* You can state whether a column should have a unique constraint when creating the table.
* __The ```ID``` column also has the unique constraint applied to it when it is defined as the primary key. This happens by default.__
* Good examples of columns that should have this constraint are: emails, usernames, etc.

### Not Null
* __Here, the ```NULL``` value represents the idea of absence of value.__
* This constraint ensures that ```NULL``` values cannot be inserted into a column.
* __If some piece of data is vital, then it is expected that its column has this specific constraint.__
* One can also mark a column with such constraint when creating a table.

### Check
* __This constraint is used to check whether a value entered inside a column satisfies a boolean expression.__
* For example, an age column must contain values greater than 0.
* __This constraint is responsible for ensuring that the data present inside of a column makes sense.__