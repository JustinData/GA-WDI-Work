CREATE TABLE clown_cars (
	id serial PRIMARY KEY,
	color varchar(50) NOT NULL,
	capacity integer NOT NULL
);

CREATE TABLE clowns (
	id serial PRIMARY KEY,
	name varchar(100) NOT NULL,
	-- need to reference the clown car id's
	clown_car_id integer references clown_cars(id)
	-- note: no NOT NULL constraint, clowns dont have to be in car
);

