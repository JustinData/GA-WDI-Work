insert into clown_cars (color, capacity) values('blue', 20) returning id;

insert into clowns (name) values ('Bozo');

insert into clowns (name) values ('Pozo');

select clown_cars.color, clowns.* from clown_cars inner join clowns on clowns.clown_car_id = clown_cars.id;

select clown_cars.*, clowns.* from clown_cars left outer join clowns on clowns.clown_car_id = clown_cars.id;

update clowns set clown_car_id = 1 where name='Bozo';

# At capacity
select clown_cars.* from clown_cars where (select count(*) from clowns where clowns.clown_car_id = clown_cars.id) = clown_cars.capacity;