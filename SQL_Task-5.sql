SELECT * FROM customers;
SELECT * FROM categories;
SELECT * FROM Products;
SELECT * FROM Orders;
SELECT * FROM orderdetails;
SELECT * FROM Payments;

SELECT c.categoryname
      ,p.productname
FROM  categories c
     ,products   p
WHERE c.categoryid = p.categoryid

----Inner Join
SELECT a.customerid
      ,a.customername
      ,orderid
      ,orderdate
FROM   customers  a
INNER JOIN Orders ON a.customerid = Orders.customerid

----Subquery
SELECT b.customername
      ,b.address
FROM   customers  b
WHERE b.customerid IN (SELECT d.customerid
                       FROM   Orders d
                       WHERE  d.orderdate > '01-Jan-2024'
                       )
                       
      
     







 
