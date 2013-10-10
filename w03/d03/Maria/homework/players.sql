create table players(
id serial primary key,
name varchar(50) not null,
age integer not null,
team varchar(20) not null,
games integer  not null,
points integer not null
);

--psql -d sandbox -h localhost -f players.sql