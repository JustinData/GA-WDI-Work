create table morning_kittens(
id serial primary key,
url varchar(255) not null,
is_meow boolean not null
);

--psql -d sandbox -h localhost -f meow.sql