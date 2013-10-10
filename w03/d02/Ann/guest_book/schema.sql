--- entries in sandbox 
--- id, name, comment 

CREATE TABLE entries (
  id serial PRIMARY KEY,
  guest varchar(50) NOT NULL,
  comment text
);

