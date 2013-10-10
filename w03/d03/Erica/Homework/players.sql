# create table with elements 
CREATE TABLE players (
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL,
  age integer NOT NULL,
  team varchar(4) NOT NULL,
  games integer DEFAULT 1,
  points integer DEFAULT 1, 
);



