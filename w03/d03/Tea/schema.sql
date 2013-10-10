create table morning_users(
  id serial PRIMARY KEY,
  name varchar(50) not null,
  street_address varchar(200) not null,
  email_address varchar(50) not null
);