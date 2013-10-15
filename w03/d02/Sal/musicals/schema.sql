-- # Create  a new database
-- # sanbox 

-- # Create a table called musicals
-- # id 
-- # title 
-- # year 
-- # composter

create table musicals (
	id serial primary key, 
	title varchar(100) not null, 
	year varchar(4) not null, 
	composer varchar(100) not null
);