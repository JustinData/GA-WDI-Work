-- entries in sandbox
-- id, name, comment

create table entries (  
  id serial primary key,
  author varchar(50) not null,
  photo varchar(100) not null,
  date varchar(20) not null
  );

