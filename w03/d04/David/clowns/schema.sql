CREATE TABLE clown_cars (
  id serial PRIMARY KEY,
  color varchar(20) NOT NULL,
  capacity integer NOT NULL
);

CREATE TABLE clowns (
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL,
  clown_car_id integer REFERENCES clown_cars(id)
  );