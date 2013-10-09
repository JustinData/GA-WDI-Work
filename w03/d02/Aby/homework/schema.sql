create table Entry (
	id serial primary key,
	name varchar(50) not null,
	url varchar(100) not null,
	date_taken integer(10) not null,
);