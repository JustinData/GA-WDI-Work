-- in sandbox db
-- 	-- id

-- 	-- name
-- 	-- age
-- 	-- team
-- 	-- games
-- 	-- points

CREATE TABLE players (
	id serial PRIMARY KEY,
	name varchar(50) NOT NULL,
	age integer default 18,
	team varchar(50),
	games integer,
	points float
);

