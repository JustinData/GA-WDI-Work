CREATE TABLE artists (
	id serial PRIMARY KEY,
	name varchar(50) NOT NULL,
	nationality varchar(5) NOT NUll,
	birth_date date NOT NULL
);

CREATE TABLE paintings (
	id serial PRIMARY KEY,
	title varchar(100) NOT NULL,
	year integer NOT NULL,
	image_url varchar(300),
	-- painting has only 1 artist, needs to ref artist id
	artist_id integer references artists(id)
);

