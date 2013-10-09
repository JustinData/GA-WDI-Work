-- create new database
	-- sandbox

-- create a table
-- id
-- title
-- year
-- composer

create table musicals (
	id serial primary key,
	title varchar(100) not null,

	-- Note: class did varchar(4)
	year integer not null,
	composer varchar(100) not null
);

