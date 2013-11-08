-- create a new database
-- # psql
-- # create database sandbox;
-- # \d (empties database)

-- sandbox

-- create a table

create table musicals(

id serial primary key,
title varchar(100) not null,
year varchar(4) not null,
composer varchar(100) not null
);

-- id
-- title
-- year
-- conposer
