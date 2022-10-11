#Q1

SELECT first_name, last_name
FROM actor 
Where last_name = 'Wahlberg';

#Q2

SELECT count(amount)
FROM payment
where amount >= 3.99 and amount <= 5.99;

#Q3 

SELECT film_id, count(*) 
FROM inventory
group by film_id
ORDER BY count(*) DESC

#Q4

SELECT first_name, last_name
FROM customer
Where last_name = 'William';

#Q5

SELECT staff_id, count(*)
FROM payment
group by staff_id
ORDER by count(rental_id) DESC

#Q6

SELECT count(district)
FROM address
limit 1

#Q7

select film_id, count(actor_id)
from film_actor
group by film_id
order by count(*) DESC

#Q8

select last_name, store_id
from customer
where last_name like '%es'
group by last_name, store_id
having store_id = 1

#Q9

select count(amount), customer_id
from payment
where customer_id >= 380 and customer_id <= 430
group by customer_id, amount
having count(amount) > 250


#Q10

select rating, count(*)
from film 
group by rating
order by count(*) desc