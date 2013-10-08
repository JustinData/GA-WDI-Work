-- entries in wdinstagram
-- id, author, photo_url, date_taken

CREATE TABLE entries (
	id serial primary key,
	author varchar(50) NOT NULL,
	photo_url varchar(200) NOT NULL,
	date_taken varchar(50) NOT NULL
)