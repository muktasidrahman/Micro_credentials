-- 1.Write a select statement to return all columns and rows from the customer table.
SELECT *
FROM CUSTOMER

--2.Write a query to select first name, last name, and email from the customer table.
SELECT FIRST_NAME, LAST_NAME , EMAIL
FROM CUSTOMER

--3.Write a query to return all rows and columns from the film table.
SELECT * 
FROM FILM

--4.Write a query to return unique rows from the release_year column in the film table.
SELECT DISTINCT RELEASE_YEAR
FROM FILM

--5.Write a query to return unique rows from the rental_rate column in the film table.
SELECT DISTINCT RENTAL_RATE
FROM FILM

--6.A customer left us some feedback about our store.  Write a query to find her email address – for Nancy Thomas.
SELECT email
FROM CUSTOMER
WHERE FIRST_NAME = 'Nancy' AND LAST_NAME = 'Thomas'

--7.We’re trying to find a customer located at a certain address ‘259 Ipoh Drive’ – can you find their phone number? 
SELECT PHONE
FROM ADDRESS
WHERE ADDRESS = '259 Ipoh Drive'

--8.Write a query from the customer table, where store id is 1 and address id is greater than 150.
SELECT *
FROM CUSTOMER
WHERE STORE_ID =1 AND ADDRESS_ID >150

--9.Write a query from the payment table where the amount is either 4.99 or 1.99.
SELECT *
FROM PAYMENT
WHERE AMOUNT = 1.99 OR AMOUNT = 4.99

--10.Write a query to return a list of transitions from the payment table where the amount is greater than 5.
SELECT *
FROM PAYMENT 
WHERE AMOUNT > 5
