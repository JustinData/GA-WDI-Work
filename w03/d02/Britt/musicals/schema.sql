-- Create a new database
-- sandbox

-- Create a table called musicals
-- id
-- title
-- year
-- composer

CREATE TABLE musicals (
	id serial primary key,
	title varchar(100) NOT NULL,
	year varchar(4) NOT NULL,
	composer varchar(100) NOT NULL
);