

create table clown_cars(
id serial primary key,
color varchar(20) not null,
capacity integer not null
);

create table clowns(
id serial primary key,
name varchar(50) not null,
clown_car_id integer references clown_cars(id)
); 

--psql -d sandbox -f ./schema.sql

--sandbox=# INSERT INTO clowns (name) values ('Bozo'), ('Pozo'), ('Dozo');

--sandbox=# INSERT INTO clown_cars (color, capacity) VALUES ('Blue', 2);

--if you want to see a list of the clown cars and their respective clowns:

--sandbox=# SELECT * FROM clown_cars INNER JOIN clowns ON clowns.clown_car_id = clown_cars.id;
--inner join shows us only where clown cars have clowns.

--SELECT * FROM clown_cars LEFT OUTER JOIN clowns ON clowns.clown_car_id = clown_cars.id;
--show me all cars with clowns in there or not.

--add Bozo to blue clown car
--first SELECT * FROM clown_cars WHERE color = 'Blue';

--??didnt workINSERT INTO clown_cars (color, capacity) VALUES ('Red', 40);


