CREATE TABLE instagrams (
  id serial primary key,
  author varchar(30) NOT NULL,
  photo text NOT NULL,
  date varchar(20) NOT NULL
);