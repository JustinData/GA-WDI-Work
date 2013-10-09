create table instagrams (
	id serial primary key, 
	author varchar(50) not null, 
	url text,
	published varchar(20) not null
);