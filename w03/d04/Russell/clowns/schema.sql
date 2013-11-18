
create table clown_cars (
id serial primary key,
color varchar(20) NOT NULL,
capacity integer NOT NULL

);

create table clowns (
id serial primary key,
name varchar(30) NOT NULL,
clown_car_id integer references clown_cars(id)

);