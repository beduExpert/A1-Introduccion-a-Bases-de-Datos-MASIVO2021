USE classicmodels;

-- Ejercicio 1.
SELECT o.orderNumber, sum(quantityOrdered)
FROM orders o
JOIN orderdetails od
  ON o.orderNumber = od.orderNumber
GROUP BY o.orderNumber;

-- Ejercicio 2.
SELECT o.orderNumber, o.status, sum(quantityOrdered * priceEach) total
FROM orders o
JOIN orderdetails od
  ON o.orderNumber = od.orderNumber
GROUP BY o.orderNumber, o.status;

-- Ejercicio 3.
SELECT o.orderNumber, requiredDate, orderLineNumber, p.productName, quantityOrdered, priceEach
FROM orders o
JOIN orderdetails od
  ON o.orderNumber = od.orderNumber
JOIN products p
  ON od.productCode = p.productCode;
  
-- Ejercicio 4
SELECT o.orderNumber, p.productName, MSRP, priceEach
FROM orders o
JOIN orderdetails od
  ON o.orderNumber = od.orderNumber
JOIN products p
  ON od.productCode = p.productCode;
  
-- Ejercicio 5
SELECT c.customerNumber, customerName, orderNumber, status
FROM customers c
LEFT JOIN orders o
  ON c.customerNumber = o.customerNumber;
  
-- Ejercicio 6
SELECT c.customerNumber, customerName
FROM customers c
LEFT JOIN orders o
  ON c.customerNumber = o.customerNumber
WHERE orderNumber IS NULL;

-- Ejercicio 7
SELECT lastName, firstName, customerName, checkNumber, amount
FROM employees e
LEFT JOIN customers c 
ON e.employeeNumber = c.salesRepEmployeeNumber
LEFT JOIN payments ON 
    payments.customerNumber = c.customerNumber
ORDER BY customerName, checkNumber;

-- Ejercicio 8
SELECT c.customerNumber, customerName, orderNumber, status
FROM customers c
RIGHT JOIN orders o
  ON c.customerNumber = o.customerNumber;
  
SELECT c.customerNumber, customerName
FROM customers c
RIGHT JOIN orders o
  ON c.customerNumber = o.customerNumber
WHERE orderNumber IS NULL;
  
SELECT lastName, firstName, customerName, checkNumber, amount
FROM employees e
RIGHT JOIN customers c 
ON e.employeeNumber = c.salesRepEmployeeNumber
LEFT JOIN payments ON 
    payments.customerNumber = c.customerNumber
ORDER BY customerName, checkNumber;

-- Ejercicio 9. Libre: Elección del alumno.