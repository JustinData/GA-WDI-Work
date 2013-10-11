-- entries in sandbox
-- id, name, comment

CREATE TABLE entries (
	id serial primary key,
	name varchar(50) NOT NULL,
	comment text
)