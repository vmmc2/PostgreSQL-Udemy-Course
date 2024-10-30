# Section 07 - Database Relationships

## What are Database Relationships?
* Database Relationships allow data to be stored in different tables while still linking the data between the tables.
* Remember how the ```Directors``` and the ```Movies``` tables were linked.
* Primary keys and foreign keys are used to link tables together.
* When it comes to database relationships, there are three different kinds:
  1. One-to-One Relationships
  2. One-to-Many Relationships
  3. Many-to-Many Relationships


## One-to-One Relationships
* Also called 1:1 relationships.
* Simplest type of relationship. Not very common though.
* The condition that establishes a one-to-one relationships is the following: Suppose that we have two tables, one with just a primary key and another with a primary key and a foreign key. __This type of relationship happens when the primary key values appear a maximum of once in the foreign key column.__
* One good example of a one-to-one relationship is the one that exists between the ```movies``` and the ```movie_revenues``` tables. 
* __Usually, when dealing with one-to-one relationships, we don't create another table. We put the information of the two tables together in a single one. However, in case some of the data is sensitive, then it makes sense to create a whole new table, creating two tables and link them together through the use of a primary key and a foreign key.__
* The table with the foreign key is called __child table__ while the other one is called __parent table.__


## One-to-Many Relationships
* Also called 1:n relationships.
* This is a fairly common type of relationship that appears in relational databases.
* The condition that establishes a one-to-many relationships is the following: Suppose that we have two tables, one with just a primary key and another with a primary key and a foreign key. __This type of relationship happens when the primary key values can appear multiple times in the foreign key column.__
* One good example of a one-to-many relationship is the one that exists between the ```directors``` and the ```movies``` tables.
* __Another good example of this kind of relationship is the following: Suppose that a company is responsible for tracking customers' orders. Thus, they would have a ```customers``` table containing information about each customer and also an ```orders``` table containing information about each other. In this scenario, one customer can have multiple orders. Thus, there is a one-to-many relationship between these two tables.__ A customer can have any amount of orders. However, each order can only be associated with a single customer.


## Many-to-Many Relationships
* Also called n:n relationships (or m:n relationships).
* This is also a fairly common type of relationship that appears in relational databases.
* __This scenario occurs when two tables have many instances of each other. Therefore, we cannot relate these two tables just using primary keys and foreign keys because doing so would break the principle of uniqueness.__
* __To get around this, it is necessary to create a third table called junction table. The junction table has columns for the primary keys of both tables. The primary key of a junction table is a combination of these two columns, so there is no need to add a third column called ```id``` (but you can do so, if you want).__
* A good example of a real world scenario is a database where we have two tables: one representing ```books``` and another representing ```authors```. __Pay attention to the fact that one author can write many books and a book might have been written by many authors. This is what distinguishes a many-to-many relationship from a one-to-many relationship.__
