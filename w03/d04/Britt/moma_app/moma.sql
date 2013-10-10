DROP TABLE IF EXISTS paintings;
DROP TABLE IF EXISTS artists;

CREATE TABLE artists (
  id serial primary key,
  name varchar(50) NOT NULL,
  nationality varchar(50) NOT NULL,
  date_of_birth date NOT NULL
);

CREATE TABLE paintings (
  id serial primary key,
  title varchar(100) NOT NULL,
  year varchar(4) NOT NULL,
  image_url varchar(255) NOT NULL,
  artist_id integer references artists(id)
);