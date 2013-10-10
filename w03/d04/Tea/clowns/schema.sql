create table clown_cars (
  id serial PRIMARY KEY,
  color varchar(20) NOT NULL,
  capacity integer NOT NULL
  );

create table clowns (
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL,
  clown_car_id integer REFERENCES clown_cars(id)
);

-- Bozo, Pozo, and Dozo --- 

-- SEE where clown_cars hold clowns 
-- SELECT * FROM clown_cars INNER JOIN clowns ON clowns.car_id = clown_cars.id;

-- Put Bozo in the blue car
-- UPDATE clowns SET car_id = 1 WHERE name = 'Bozo';