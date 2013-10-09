#   Create a new database
#	sandbox

# 	Create a table
# 	id
# 	title
#	year
#	composer

create table musicals (
	id serial primary key,
	title varchar(100) not null,
	year integer(4) not null,
	composer varchar(100) not null
);