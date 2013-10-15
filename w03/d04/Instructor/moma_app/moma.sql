CREATE TABLE artists (
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL,
  nationality varchar(50) NOT NUll,
  dob date NOT NULL
);

CREATE TABLE paintings (
  id serial PRIMARY KEY,
  title varchar(100) NOT NULL,
  year integer NOT NULL,
  image_url varchar(300),
  artist_id integer references artists(id)
);