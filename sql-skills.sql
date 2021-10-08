
-- Artist Table

1 --     Add 3 new artists to the artist table using INSERT. (It’s already created.)

INSERT INTO artist
VALUES ('Doja Cat'), ('Frank Sinatra'), ('MSI');


2 --     Select 5 artists in alphabetical order.

SELECT * FROM artist 
ORDER BY name ASC
LIMIT(5)


 -- Employee Table

1 --     List all employee first and last names only that live in Calgary.

SELECT first_name, last_name, city FROM employee
WHERE city = 'Calgary' 


2 --     Find everyone that reports to Nancy Edwards (Use the ReportsTo column). You will need to query the employee table to find the Id for Nancy Edwards

SELECT * FROM employee WHERE first_name LIKE 'Nancy%';
SELECT * FROM employee WHERE reports_to IN (2);

3 --     Count how many people live in Lethbridge.

SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge'

-- Invoice Table

1 --     Count how many orders were made from the USA.

SELECT COUNT(*) FROM invoice 
WHERE billing_country = 'USA'

2 --     Find the largest order total amount.

SELECT * FROM invoice 
ORDER BY total DESC
LIMIT(1)

3 --     Find the smallest order total amount.

SELECT * FROM invoice
ORDER BY total ASC
LIMIT(1)

4 --     Find all orders bigger than $5.

SELECT COUNT(*) FROM invoice
WHERE total > 5

5 --     Count how many orders were smaller than $5.

SELECT COUNT(*) FROM invoice
WHERE total < 5

6 --     Get the total sum of the orders.

SELECT SUM(total) FROM invoice

-- JOIN Queries (Various tables)

1 --     Get all invoices where the unit_price on the invoice_line is greater than $0.99.

SELECT *
FROM invoice i
JOIN invoice_line il ON il.invoice_id = i.invoice_id
WHERE il.unit_price > 0.99;

2 --     Get the invoice_date, customer first_name and last_name, and total from all invoices.
SELECT i.invoice_date, c.first_name, c.last_name, i.total
FROM invoice i 
JOIN customer c ON c.customer_id = i.customer_id;


3 --     Get the customer first_name and last_name and the support rep’s first_name and last_name from all customers. Note that support reps are on the employee table.

SELECT c.first_name, c.last_name, e_first_name, e.last_name
FROM customer c 
JOIN employee e ON c.support_rep_id = e.employee_id;

4 --     Get the album title and the artist name from all albums.

SELECT ab.title, a.name
FROM artist a
JOIN album ab ON a.artist_id = ab.artist_id;