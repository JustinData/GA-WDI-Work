CREATE TABLE players (
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL,
  age integer,
  team varchar(50) NOT NULL,
  game integer, 
  points integer  
  );
