USE classicmodels;

-- Ejercicio 1.
SELECT employeeNumber, lastName, firstName
FROM employees
WHERE firstName LIKE 'A%';

-- Ejercicio 2
SELECT employeeNumber, lastName, firstName
FROM employees
WHERE lastName LIKE '%on';

-- Ejercicio 3
SELECT employeeNumber, lastName, firstName
FROM employees
WHERE firstName LIKE '%on%';

-- Ejercicio 4
SELECT employeeNumber, lastName, firstName
FROM employees
WHERE firstName LIKE 'G_____';

-- Ejercicio 5
SELECT employeeNumber, lastName, firstName
FROM employees
WHERE lastName NOT LIKE '%B';

-- Ejercicio 6
SELECT productCode, productName
FROM products
WHERE productCode LIKE '%_20%';

-- Ejercicio 7
SELECT orderNumber, sum(priceEach) total
FROM orderdetails
GROUP BY orderNumber;

-- Ejercicio 8
SELECT year(orderDate) anio, count(*)
FROM orders
GROUP BY anio;

-- Ejercicio 9
SELECT lastName, firstName
FROM employees
WHERE officeCode IN (SELECT officeCode FROM offices WHERE country = 'USA');

-- Ejercicio 10
SELECT customerNumber, checkNumber, amount
FROM payments
WHERE amount = (SELECT max(amount) FROM payments);

-- Ejercicio 11
SELECT customerNumber, checkNumber, amount
FROM payments
WHERE amount > (SELECT avg(amount) FROM payments);

-- Ejercicio 12
SELECT customerName
FROM customers
WHERE customerNumber NOT IN (SELECT customerNumber FROM orders);

-- Ejercicio 13
SELECT max(quantityOrdered), min(quantityOrdered), avg(quantityOrdered)
FROM orderdetails;

-- Ejercicio 14
SELECT status, count(*)
FROM orders
GROUP BY status;