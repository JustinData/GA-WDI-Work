-- entries in sandbox
-- author, photo, date

create table entries(
id serial primary key,
name varchar(50) not null,
pdate varchar(8) not null,
photo varchar(100) not null
);

--created a new db called instapic
--then put this in terminal : psql -d instapic -h localhost -f schema.sql
--id serial populates itself
--instapic=# insert into entries (name, pdate, photo) values ('maria', '12211978', 'http://horsebreedsinfo.com/images/black
--_horse_running.jpg');