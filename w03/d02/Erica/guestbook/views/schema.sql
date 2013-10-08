-- entries in sandbox
-- id, name, comment

create table entries (  
  id serial primary key,
  name varchar(50) not null,
  comment text
  );

