create table cars (
  id serial primary key,
  make varchar(50) not null,
  price_per_day numeric not null
);

create table customers (
  id serial primary key,
  name varchar(50) not null,
  email varchar(50)
);

create table rentals (
  id serial primary key,
  customer_id integer not null references customers(id),
  car_id integer not null references cars(id),
  start_date date not null,
  end_date date not null,
  check (start_date < end_date)
);