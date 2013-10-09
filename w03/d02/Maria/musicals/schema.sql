-- # Create a new database  called sandbox
-- # create a table called musicals
-- # id
-- # title
-- # year
-- # composer

create table musicals(
  id serial primary key,
  title varchar(100) not null,
  year varchar(4) not null,
  composer varchar(100) not null
);