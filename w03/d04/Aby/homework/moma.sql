CREATE TABLE artists (
  id serial primary key,
  name varchar(50) NOT NULL,
  nationality varchar(50) NOT NULL,
  date_of_birth varchar(50) NOT NULL
 );


CREATE TABLE paintings (
  id serial primary key,
  year integer DEFAULT 4,
  image_url varchar(50) NOT NULL,
  artist_id integer references artists(id)
 );
