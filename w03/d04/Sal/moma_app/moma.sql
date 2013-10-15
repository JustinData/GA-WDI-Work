
create table artists (
	id serial primary key, 
	name varchar(50) not null, 
	nationality varchar(50) not null, 
	dob varchar(20) not null
);
 

create table paintings (
	id serial primary key, 
	title varchar(50) not null, 
	year varchar(4) not null,
	image_url varchar(100) not null, 
	artist_id integer references artists(id)
);

