create table people(
id serial primary key,
name varchar(30) not null,
num_trips integer not null
);


-- create table trips(
-- id serial primary key,
-- name varchar(20) not null,
-- num_trips integer not null
-- );

--psql -d sandbox -f ./trips.sql