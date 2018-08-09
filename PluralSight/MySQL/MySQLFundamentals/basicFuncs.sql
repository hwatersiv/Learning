-- Retrieve results based on function

select *
from sakila.actor;

select *
from sakila.payment;

----- Integer Operations -----

select	amount,
		round(amount) Amnt,
        round(amount,1) Amnt1,
        floor(amount) FloorAmnt,
        ceiling(amount) CeilingAmnt
from sakila.payment;

select round(4.49);
----- String Operations -----

-- Concat
select concat(first_name, ' ', last_name) as FullName
from sakila.actor;

-- LEFT Function
select	concat(first_name,' ',last_name) as FullName,
		concat(left(first_name,1), ' ', left(last_name,1)) as FirstInitial
from sakila.actor;

-- LENGTH Function
select	concat(first_name,' ',last_name) as FullName,
		length(concat(first_name,' ',last_name)) as Length,
        concat(left(first_name,1), ' ', left(last_name,1)) as FirstInitial
from sakila.actor;

-- Various functions
select	concat(first_name,' ',last_name) as FullName,
		reverse(concat(first_name,' ',last_name)) as ReverseFullName,
        replace( concat(first_name,' ',last_name),'S' ,'$' ) as ReplaceExample
from sakila.actor;

