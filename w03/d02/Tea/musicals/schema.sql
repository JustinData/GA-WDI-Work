-- Create a new database
  -- open psql
  -- create database sandbox;
  -- \c sandbox
  -- $psql -d sandbox -f schema.sql
    -- d is which database, f is file

  -- Write database scheme IN SQL file

-- sandbox

-- create a table called musicals
--   id
--   title
--   year
--   composer

create table musicals (
  id serial PRIMARY KEY,
  title varchar(100) not null,
  year varchar(4) not null,
  composer varchar(100) not null
);
