CREATE TABLE clown_cars(
  id serial primary key,
  color varchar(50) NOT NULL,
  capacity integer NOT NULL
 );


CREATE TABLE clowns (
  id serial primary key,
  name varchar(50) NOT NULL,
  clown_car_id integer references clown_cars(id)
 );
