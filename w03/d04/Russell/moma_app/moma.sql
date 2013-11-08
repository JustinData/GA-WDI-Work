create table artists (
id serial primary key,
name varchar(20) NOT NULL,
nationality varchar(20) NOT NULL,
dob varchar(10) NOT NULL

);

create table paintings (
id serial primary key,
title varchar(30) NOT NULL,
year integer NOT NULL,
image varchar(100ALTER T) NOT NULL

);