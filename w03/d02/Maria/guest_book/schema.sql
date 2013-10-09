-- entries in sandbox
-- id, name, comment

create table entries(
id serial primary key,
name varchar(50) not null,
comment text
);

--then put this in terminal : psql -d sandbox -h localhost -f schema.sql