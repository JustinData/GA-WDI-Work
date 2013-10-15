create table clown_cars (
	id serial primary key, 
	color varchar(20) not null, 
	capacity integer not null
);

create table clowns (
	id serial primary key, 
	name varchar(50) not null, 
	clown_car_id integer references clown_cars(id)
);


