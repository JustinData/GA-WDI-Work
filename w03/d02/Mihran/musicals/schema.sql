create table musicals (
  id serial primary key not null,
  title varchar(100) not null,
  year varchar(4) not null,
  composer varchar(100) not null
);