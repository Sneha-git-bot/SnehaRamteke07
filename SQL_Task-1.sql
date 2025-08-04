
CREATE TABLE customers
(customerid    NUMBER(10)     
,customername  VARCHAR2(100)
,email         VARCHAR2(100)
,address       VARCHAR2(100)
,Phone         NUMBER(20)
,CONSTRAINTS customers_customerid_pk PRIMARY KEY (customerid)                      
); 
                      
CREATE TABLE categories
(categoryid    NUMBER(10)     
,categoryname  VARCHAR2(100)
,CONSTRAINTS   categories_categoryid_pk PRIMARY KEY (categoryid)                       
);                    
                      
CREATE TABLE Products
(productid      NUMBER(10)     
,productname    VARCHAR2(100)
,price          NUMBER(10,2)
,stock          NUMBER(10)
,categoryid     NUMBER(10) 
,CONSTRAINTS Products_productid_pk PRIMARY KEY (productid)
,CONSTRAINTS Products_categoryid_fk FOREIGN KEY (categoryid) REFERENCES categories(categoryid)
);

CREATE TABLE Orders
(orderid        NUMBER(10)
,customerid     NUMBER(10)
,orderdate      DATE
,totalamount    NUMBER(10,2)
,CONSTRAINTS Orders_orderid_pk PRIMARY KEY (orderid)
,CONSTRAINTS Orders_customerid_fk FOREIGN KEY (customerid) REFERENCES customers(customerid)
);

CREATE TABLE orderdetails
(orderdtlsid    NUMBER(10)
,orderid        NUMBER(10)
,productid      NUMBER(10)
,quantity       NUMBER(10)
,price          NUMBER(10,2)
,CONSTRAINTS orderdetails_orderdtlsid_pk PRIMARY KEY (orderdtlsid)
,CONSTRAINTS orderdetails_orderid_fk FOREIGN KEY (orderid) REFERENCES Orders(orderid)
,CONSTRAINTS Products_productid_fk FOREIGN KEY (productid) REFERENCES Products(productid)
);

CREATE TABLE Payments
(paymentid      NUMBER(10)
,orderid        NUMBER(10)
,Paymentdate    DATE
,paymentmethod  VARCHAR2(50)
,Amount         NUMBER(10,2)
,CONSTRAINTS Payments_paymentid_pk PRIMARY KEY (paymentid)
,CONSTRAINTS Payments_orderid_fk FOREIGN KEY (orderid) REFERENCES Orders(orderid)
);

INSERT INTO customers(customerid
                     ,customername
                     ,email
                     ,address
                     ,phone
                     )
VALUES               (1
                     ,'Sneha'
                     ,'sneha@example.com'
                     ,'Nagpur'
                     ,'24851557'
                     )                     
                     
INSERT INTO Categories(Categoryid
                      ,Categoryname
                      )
VALUES                (1
                      ,'Electronics'
                      )   

INSERT INTO Products(Productid
                    ,Productname
                    ,Price
                    ,Stock
                    ,Categoryid
                    )
VALUES              (1
                    ,'Smart Phone'
                    ,25000
                    ,10
                    ,1
                    )     
                    
                                                                                                  
                     
