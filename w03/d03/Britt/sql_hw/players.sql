-- id, name, age, team, games, and points
DROP TABLE IF EXISTS players;

CREATE TABLE players (
  id serial PRIMARY KEY,
  name varchar(100) NOT NULL,
  age integer NOT NULL,
  team varchar(100) NOT NULL,
  games integer NOT NULL,
  points integer NOT NULL
);