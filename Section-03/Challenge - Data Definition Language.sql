-- Database: owners_pets

-- DROP DATABASE IF EXISTS owners_pets;

CREATE DATABASE owners_pets
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Portuguese_Brazil.1252'
    LC_CTYPE = 'Portuguese_Brazil.1252'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

CREATE TABLE owners(
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	city VARCHAR(30),
	state CHAR(2)
);

SELECT * FROM owners;

CREATE TABLE pets(
	id SERIAL PRIMARY KEY,
	species VARCHAR(30),
	full_name VARCHAR(30),
	age INT NOT NULL,
	owner_id INT REFERENCES owners(id)
);

SELECT * FROM pets;

ALTER TABLE owners
ADD COLUMN email VARCHAR(50) UNIQUE;

SELECT * FROM owners;

ALTER TABLE owners
ALTER COLUMN last_name TYPE VARCHAR(50);

SELECT * FROM owners;