CREATE TABLE players (
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL,
  age integer NOT NULL,
  team varchar(50) NOT NULL,
  games integer NOT NULL,
  points integer NOT NULL
 );