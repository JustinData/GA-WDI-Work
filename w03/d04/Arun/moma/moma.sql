CREATE TABLE artists(
	id serial PRIMARY KEY,
	name varchar(50) NOT NULL,
	nationality varchar(50),
	date_of_birth varchar(50)
);

CREATE TABLE paintings(
	id serial PRIMARY KEY,
	title varchar(100) NOT NULL,
	year varchar(10),
	image_url varchar(255),
	artist_id integer references artists(id)
);