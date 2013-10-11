create table artists(
id serial primary key,
name varchar(20) not null,
nationality varchar(20) not null,
dob integer not null
);

create table paintings(
id serial primary key,
title varchar(100) not null,
year integer not null,
img_url varchar(255) not null,
artist_id integer references artists(id)
); 

--psql -d moma_db -f ./moma.sql