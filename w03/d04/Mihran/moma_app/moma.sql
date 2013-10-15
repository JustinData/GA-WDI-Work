CREATE TABLE artists (
id serial PRIMARY KEY,
name varchar (30) NOT NULL,
nationality varchar (60) NOT NULL, 
date_of_birth date NOT NULL
);


CREATE TABLE paintings (
id serial PRIMARY KEY,
title varchar(50) NOT NULL,
year integer NOT NULL,
image_url varchar (300) NOT NULL,
artist_id integer references artists(id)
);

