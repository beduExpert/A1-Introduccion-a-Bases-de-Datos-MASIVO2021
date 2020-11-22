-- Ejercicio 1
USE employes;

-- Ejercicio 2
SELECT lastName 
FROM employees;

-- Ejercicio 3
SELECT lastName, firstName, jobTitle
FROM employees;

-- Ejercicio 4
SELECT *
FROM employees;

-- Ejercicio 5
SELECT lastName, firstName, jobTitle
FROM employees
WHERE jobTitle = 'Sales Rep';

-- Ejercicio 6
SELECT lastName, firstName, jobTitle, officeCode
FROM employees
WHERE jobTitle = 'Sales Rep' 
  AND officeCode = 1;
  
-- Ejercicio 7
SELECT lastName, firstName, jobTitle, officeCode
FROM employees
WHERE jobTitle = 'Sales Rep' 
   OR officeCode = 1;

-- Ejercicio 8
SELECT lastName, firstName, jobTitle, officeCode
FROM employees
WHERE officeCode IN (1,2,3);

-- Ejercicio 9
SELECT lastName, firstName, jobTitle
FROM employees
WHERE jobTitle <> 'Sales Rep';

SELECT lastName, firstName, jobTitle
FROM employees
WHERE jobTitle != 'Sales Rep';

-- Ejercicio 10
SELECT lastName, firstName, jobTitle, officeCode
FROM employees
WHERE officeCode > 5;

-- Ejercicio 11
SELECT lastName, firstName, jobTitle, officeCode
FROM employees
WHERE officeCode <= 4;

-- Ejercicio 12
SELECT customerName, country, state
FROM customers
WHERE country = 'USA'
  AND state = 'CA';
  
-- Ejercicio 13
SELECT customerName, country, state, creditLimit
FROM customers
WHERE country = 'USA'
  AND state = 'CA'
  AND creditLimit > 100000;
  
-- Ejercicio 14
SELECT customerName, country
FROM customers
WHERE country IN ('USA', 'France');

-- Ejercicio 15
SELECT customerName, country
FROM customers
WHERE country IN ('USA', 'France')
  AND creditLimit > 100000;
  
-- Ejercicio 16
SELECT officeCode, city, phone, country
FROM offices
WHERE country IN ('USA', 'France');

-- Ejercicio 17
SELECT officeCode, city, phone, country
FROM offices
WHERE country NOT IN ('USA', 'France');

-- Ejercicio 18
SELECT orderNumber, customerNumber, status, shippedDate 
FROM orders
WHERE orderNumber IN (10165, 10287, 10310);

-- Ejercicio 19
SELECT contactLastName, customerName
FROM customers
ORDER BY contactLastName;

SELECT contactLastName, customerName
FROM customers
ORDER BY contactLastName ASC;

-- Ejercicio 20
SELECT contactLastName, customerName
FROM customers
ORDER BY contactLastName DESC;

-- Ejercicio 21
SELECT contactLastName, customerName
FROM customers
ORDER BY contactLastName DESC, 
         customerName;
         
SELECT contactLastName, customerName
FROM customers
ORDER BY contactLastName DESC, 
         customerName ASC;

-- Ejercicio 22         
SELECT customerNumber, customerName, creditLimit
FROM customers
ORDER BY creditLimit DESC
LIMIT 5;

-- Ejercicio 23
SELECT customerNumber, customerName, creditLimit
FROM customers
WHERE creditLimit > 0
ORDER BY creditLimit
LIMIT 5;