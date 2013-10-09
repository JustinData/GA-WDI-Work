-- Create a new database
-- sandbox

-- Create a table
-- id
-- title
-- year
-- composer

CREATE TABLE musicals (
  id serial primary key,
  title varchar(100) not null,
  year varchar(4) not null,
  composer varchar(100) not null
);