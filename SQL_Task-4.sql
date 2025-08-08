-----Use aggregate function and grouping to summarize data in sql

SELECT COUNT(p.productid) AS total_products
FROM   products p

SELECT SUM(a.price)  AS total_price
FROM  products a

SELECT MAX(b.price)  AS highest_price
FROM  orderdetails  b

SELECT MIN(c.totalamount) AS lowest_price
      ,c.orderid
FROM  orders c
GROUP BY c.orderid
ORDER BY c.orderid

SELECT AVG(d.amount) AS avg_price
      ,d.paymentid
FROM  payments  d
GROUP BY d.paymentid

---GROUP BY Function groups the data 
---Aggregate functions(COUNT,SUM,AVG,MAX,MIN) operate within each group, not on the whole table





