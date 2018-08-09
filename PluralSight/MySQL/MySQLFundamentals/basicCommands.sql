SELECT 'MyFirstValue' AS SomeValue;
SELECT 1+1 as TWO;

SELECT now();
SELECT curdate();
SELECT curtime();

SELECT pi();

SELECT mod(45,7);

select sqrt(25);

-- retrieve all data from table

select *
from sakila.actor;

select *
from sakila.city;

use sakila; -- set table for statements below
select *
from city;

-- retrieve all data from table
select *
from actor;

select *
from actor
order by first_name;

select *
from actor
order by last_name;

select *
from actor
order by first_name desc;

select *
from actor
order by last_name desc;

-- retrieve selected  columns from table

select *
from sakila.actor;

select first_name, last_name
from actor;

select first_name, last_name
from actor
order by first_name desc;

-- retrieve data with filter condition

select *
from actor;

select *
from actor
where actor_id > 100;

select actor_id, first_name, last_name
from actor
where first_name = 'Nick';

-- retrieve data with filter condition and ordered by columns

select actor_id, first_name, last_name
from actor
where first_name = 'Nick'
order by actor_id desc;

select actor_id, first_name, last_name
from actor
where actor_id > 100
order by first_name, last_name desc;

-- retrieve empty result set

select *
from actor
where 1 = 2;

-- Retrieve column names using aliases

select rental_date, inventory_id, return_date
from sakila.rental;

select	rental_date as RentalDate,
		inventory_id as FilmListID,
        return_date as ReturnDate
from sakila.rental;

-- Retrieve values based on arithmetic expressions

select	replacement_cost-rental_rate,
		film_id as FilmID,
        length/60
from sakila.film;

select	replacement_cost-rental_rate as CostDiff,
		film_id as FilmID,
        length/60 AS TimeInHour
from sakila.film;

select	rental_rate as RentalRate,
		rental_rate + 3 * 4 - 1 as Result1,
        (rental_rate + 3) * 4 - 1 as Result2,
        (rental_rate + 3) * (4 - 1) as Result3,
        rental_rate + (3 * 4) - 1 as Result4
from sakila.film;

select	replacement_cost as ReplacementCost,
		replacement_cost / 5 as DecimalRentalRate,
        replacement_cost div 5 as IntegerRentalRate,
        replacement_cost % 5 as RemainderRentalRate
from sakila.film;
