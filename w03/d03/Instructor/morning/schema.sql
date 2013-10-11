CREATE TABLE morning_users(
  id serial primary key,
  name varchar(50) NOT NULL,
  street_address varchar(200),
  email_address varchar(50)
);