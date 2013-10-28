CREATE TABLE artists(
id serial PRIMARY KEY,
name varchar(50) NOT NULL,
nationality varchar(50) NOT NULL,
dob varchar(50) NOT NULL
);

CREATE TABLE paintings(
id serial PRIMARY KEY,
title varchar(50) NOT NULL,
year integer NOT NULL,
image_url varchar(255) NOT NULL, 
artist_id integer references artists(id)
); 

