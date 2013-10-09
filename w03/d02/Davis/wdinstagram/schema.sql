-- id

-- author
-- photo(url)
-- date take

CREATE TABLE insta_entries (
	id serial PRIMARY KEY,
	author varchar(50) NOT NULL,
	photo_url varchar(250),
	date_taken date
);
