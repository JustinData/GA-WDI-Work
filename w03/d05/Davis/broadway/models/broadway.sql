CREATE TABLE shows (
	id serial PRIMARY KEY,
	title varchar(200) NOT NULL,
	year integer NOT NULL,
	composer varchar(50) NOT NULL,
	img_url varchar(200)
);

CREATE TABLE songs (
	id serial PRIMARY KEY,
	title varchar(100) NOT NULL,
	embed_url varchar(200),
	show_id integer references shows(id)
);

