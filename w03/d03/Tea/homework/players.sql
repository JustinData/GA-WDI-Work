create table players(
  id serial PRIMARY KEY,
  name varchar(50) not null,
  age integer not null,
  team varchar(50) not null,
  games integer not null,
  points integer not null
);