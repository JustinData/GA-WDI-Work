CREATE TABLE artists (
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL, 
  nationality varchar(50),
  date_of_birth varchar(50)
);

CREATE TABLE paintings (
  id serial PRIMARY KEY,
  title varchar(50) NOT NULL, 
  year integer,
  image_url varchar(100),
  artist_id integer REFERENCES artists(id)
);