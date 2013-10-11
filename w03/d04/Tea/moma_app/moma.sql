create table artists(
  id serial PRIMARY KEY,
  name varchar(30) NOT NULL,
  nationality varchar(30) NOT NULL,
  dob integer NOT NULL
);

create table paintings(
  id serial PRIMARY KEY,
  title varchar(50) NOT NULL,
  year integer NOT NULL,
  image_url varchar(200) NOT NULL
  artist_id integer REFERENCES artists(id)
);

