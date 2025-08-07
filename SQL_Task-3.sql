----Extract Data From One or More tables

SELECT *
FROM  payments
ORDER BY paymentid

SELECT *
FROM  customers 
ORDER BY customername

SELECT *
FROM  orderdetails
WHERE price = '10000'

SELECT *
FROM  payments
WHERE amount BETWEEN 5000 AND 10000







