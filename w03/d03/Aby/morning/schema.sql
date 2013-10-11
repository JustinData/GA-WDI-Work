create table morning_users (
  id serial primary key,
  name varchar(20) not null,
  street_address varchar(20) not null,
  email_address varchar(20) not null
);