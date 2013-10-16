DROP TABLE IF EXISTS kittens;

CREATE TABLE kittens (
  id serial PRIMARY KEY,
  url varchar(255) NOT NULL,
  is_meow boolean NOT NULL
);