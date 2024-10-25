# Section 02 - Introduction to Databases, SQL and PostgreSQL

## What is a database?
* There are 2 definitions about this:
  1. A database is an organized collection of data (e.g., an index of a book).
  2. A database gives us a method of accessing and manipulating the data.

## Types of databases
1. Excel spreadsheets (Flat files).
2. NoSQL databases (Document Database Models). Examples: MongoDB.
3. SQL Databases (Relational Databases. Are the most popular type nowadays). Examples: MySQL, Oracle,  SQL Server, PostgreSQL, etc.

## Relational Databases
* __Data is stored in tables, which are also called relations.__ These tables are very similar to tables from excel in the sense that each of them has columns a rows of data.
* __These tables can also be "linked" together in relationships.__
* Relations between tables are what make Relational Databases so powerful.
* __Through relational databases, one can identify data in relation to another piece of data in the database.__
* __Example:__
  * Suppose that inside a certain database, there is 2 tables: "Pets" and "Owners".
  * Also, suppose that the "Pets" table has several rows (where each one represents a pet) and several columns (where each one represents an attribute of the pet). Moreover, suppose that one of such columns is called "OwnerID".
  * Then, suppose that in the "Owners" table, there are also a lot of row entries and a lot of columns, where one of the is called "ID".
  * __Finally, by combining these 2 tables by matching the columns "ID" and "OwnerID", one can create a new table to figure out which pets each person owns.__

## Relational Database Management System (RDBMS)
* __Allow the user to interact with the database itself. Which means that it works kind like of a wrapper around the actual database.__
* Usually provide tools and GUIs to interact with the database.

## SQL
* __Structured Query Language.__
* It is the language used to interact with the relational database. Or, better, the language used to interact with the RDBMS.
* __This language allows the users to create tables, delete tables, insert data, delete data, retrieve data and much more.__
* SQL queries are generally very similar across different types of relational databaseds, such as: MySQL, Oracle, PostgreSQL, SQL Server, and so on.

## Installing PostgreSQL and Pgadmin for Windows and WSL2
* For Windows, all that need to be done is search for PostgreSQL.org in a browser and follow the steps from there.
* For WSL2, search for this later on.