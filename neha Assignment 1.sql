USE mavenmovies; 

/*
Q1. Identify the primary keys and foreign keys in maven movies db. Discuss the differences
*/
-- Answer:
-- The major difference between Primary key and foreign key is Primary keys uniquely identify a record in a table, while foreign keys establish a link between tables. 
SELECT * FROM information_schema.key_column_usage;


/*
Q2. List all details of actors
*/
-- Answer:
SELECT * FROM actor;


/*
Q3. List all customer information from DB.
*/
-- Answer:
SELECT * FROM customer;

/*
Q4. List different countries.
*/
-- Answer:
SELECT DISTINCT country FROM country;

/*
Q5. Display all active customers.
*/
-- Answer:
SELECT customer_id, first_name, last_name, email FROM customer WHERE `active`=1;


/*
Q6. List of all rental IDs for customer with ID 1.
*/
-- Answer:
SELECT rental_id FROM rental WHERE customer_id=1;


/*
Q7. Display all the films whose rental duration is greater than 5.
*/
-- Answer:
SELECT film_id, title FROM film WHERE rental_duration > 5;


/*
Q8. List the total number of films whose replacemnet cost is greater than $15 and less than  $20.
*/
-- Answer:
SELECT COUNT(*) FROM film WHERE replacement_cost > 15 AND replacement_cost < 20;


/*
Q9. Display the count of unique first names of actors.
*/
-- Answer:
SELECT COUNT(DISTINCT first_name) FROM actor;


/*
Q10. Display the first 10 recods from the customer table
*/
-- Answer:
SELECT * FROM customer LIMIT 10;


/*
Q11. Display the first 3 records from the customer table whose first name starts with 'b'
*/
-- Answer:
SELECT * FROM customer WHERE first_name LIKE 'b%' LIMIT 3;


/*
Q12.  Display the names of first 5 movies which are rated as G.
*/
-- Answer:
SELECT title FROM film WHERE rating = 'G' LIMIT 5;


/*
Q13. Find all customers whose first name starts with "a".
*/
-- Answer:
SELECT * FROM customer WHERE first_name LIKE "a%";


/*
Q14. Find all customers whose first name ends with "a".
*/
-- Answer:
SELECT * FROM customer WHERE first_name LIKE "%a";


/*
Q15. Display the list of first 4 cities which start and end with ‘a’.
*/
-- Answer:
SELECT city FROM city WHERE city LIKE 'a%%a' LIMIT 4;


/*
Q16. Find all customers whose first name have "NI" in any position.
*/
-- Answer:
SELECT first_name FROM customer WHERE first_name LIKE '%ni%';


/*
Q17. Find all customers whose first name have "r" in the second position .
*/
-- Answer:
SELECT first_name FROM customer WHERE first_name LIKE '_r%';


/*
Q18. Find all customers whose first name starts with "a" and are at least 5 characters in length.
*/
-- Answer:
SELECT first_name FROM customer WHERE first_name LIKE 'a____%';

/*
Q19. Find all customers whose first name starts with "a" and ends with "o".
*/
-- Answer:
SELECT first_name FROM customer WHERE first_name LIKE 'a%o';


/*
Q20. Get the films with pg and pg-13 rating using IN operator.
*/
-- Answer:
SELECT title FROM film WHERE rating IN ('PG', 'PG-13');


/*
Q21. Get the films with length between 50 to 100 using between operator.
*/
-- Answer:
SELECT * FROM film WHERE length BETWEEN 50 AND 100;


/*
Q22. Get the top 50 actors using limit operator.
*/
-- Answer:
SELECT * FROM actor LIMIT 50;


/*
Q23. Get the distinct film ids from inventory table.
*/
-- Answer:
SELECT DISTINCT film_id FROM inventory;