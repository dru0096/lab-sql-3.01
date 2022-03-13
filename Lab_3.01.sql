USE sakila;
/* 1. Drop column picture from staff. */

ALTER TABLE sakila.staff
  DROP COLUMN picture;
  
  /* 2.A new person is hired to help Jon. 
  Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly. */
  
  SELECT * FROM sakila.staff
  LIMIT 5;
  
  INSERT INTO staff(staff_id, first_name, last_name, address_id, email, store_id, active, username, last_update)
  VALUES (3, 'TAMMY','SANDERS', 79, 'TAMMY.SANDERS@sakilacustomer.org', 1, 1, 'Tammy', CURRENT_TIMESTAMP);

UPDATE staff
SET first_name= 'Tammy', last_name= 'Sanders'
WHERE staff_id = 3;

/* 3. Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. 
You can use current date for the rental_date column in the rental table. 
Hint: Check the columns in the table rental and see what information you would need to add there. 
You can query those pieces of information. For eg., you would notice that you need customer_id information as well. 
To get that you can use the following query: */

 INSERT INTO rental(rental_date, inventory_id, customer_id,staff_id, last_update) 
 VALUES (current_date(),130, 1, 1, CURRENT_TIMESTAMP);

SELECT * FROM sakila.rental
WHERE customer_id =130;

select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';

select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';

select * from sakila.film
where title = 'ACADEMY DINOSAUR';

SELECT * from sakila.inventory
where film_id = 1 and store_id=1;


