create table morning_users (
	id serial primary key, 
	name varchar(50) not null, 
	street_address varchar(100) not null,
	email_address varchar(100) 
);