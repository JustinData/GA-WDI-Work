create table photos(
  id serial PRIMARY KEY,
  author varchar(50) not null,
  photo_url varchar(300) not null,
  date_taken varchar(20) not null
);