CREATE TABLE clowns (
id serial PRIMARY KEY,
name varchar(50) NOT NULL,
clown_car_id integer references clown_cars(id)
);

CREATE TABLE clown_cars (
id serial PRIMARY KEY,
color varchar(50) NOT NULL,
capacity integer NOT NULL
);

-- -- Bozo, Pozo, and Dozo -- 

-- sandbox# insert into clowns (name) values ('Bozo'), ('Pozo'), ('Dozo')

-- Bozo --> Blue clown car

