create table entries (
	id serial primary key,
	name varchar(50) not null,
	url varchar(100) not null,
	date_taken varchar(10) not null
);