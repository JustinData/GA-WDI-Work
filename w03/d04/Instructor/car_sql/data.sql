insert into customers (name, email) values ('Jeff', 'jeff.konowitch@ga.co');

insert into customers (name, email) values ('Peter', 'peter@ga.co');

insert into cars (make, price_per_day) values ( 'Dodge', 25.95 );

insert into cars (make, price_per_day) values ( 'BMW', 65.95 );

insert into rentals (customer_id, car_id, start_date, end_date) values ( 1, 2, '10/15/13', '10/16/13');

insert into rentals (customer_id, car_id, start_date, end_date) values ( 2, 1, '10/15/13', '10/16/13');

select rentals.id, customers.name from rentals inner join customers on rentals.customer_id = customers.id;

select customers.name, cars.make, rentals.start_date, rentals.end_date, ( cars.price_per_day * date_part('day', age(rentals.end_date, rentals.start_date)) ) as cost
from rentals
  inner join customers on rentals.customer_id = customers.id
  inner join cars on rentals.car_id = cars.id;

select cars.* from cars left outer join rentals on cars.id = rentals.car_id where rentals.id is null or ( rentals.end_date < 'today' );