# psql

create database sandbox;

\connect sandbox

create table movies(
  id serial primary key,
  title varchar(50),
  year integer,
  poster text
);