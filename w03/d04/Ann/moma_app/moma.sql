CREATE TABLE paintings (
  id serial PRIMARY KEY,
  title varchar(80) NOT NULL,
  year varchar(4) NOT NULL, 
  image_url varchar(120) NOT NULL, 
  artist_id integer references artist(id)
);

CREATE TABLE artists (
  id serial PRIMARY KEY,
  name varchar(20) NOT NULL,
  nationality varchar(60) NOT NULL, 
  date_of_birth varchar(40) NOT NULL 
);

