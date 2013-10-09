-- entries in sandbox
-- id, name, content

create table entries(
  id serial PRIMARY KEY,
  name varchar(50) not null,
  comment varchar(300) not null
);