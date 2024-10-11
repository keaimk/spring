USE w3schools;
DESC Customers;

INSERT INTO Customers
    (CustomerID, CustomerName)
    VALUE (92, '흥민');
SELECT *
FROM Customers
ORDER BY CustomerID DESC;

INSERT INTO Customers
    (CustomerID, CustomerName, ContactName)
    VALUE (93, '강인', '미드필더');
SELECT *
FROM Customers
ORDER BY CustomerID DESC;

INSERT INTO Customers
    (CustomerID, CustomerName)
VALUES (94, '희찬'),
       (95, '하성'),
       (96, '오타니');
SELECT *
FROM Customers
ORDER BY CustomerID DESC;

INSERT INTO Customers
    (CustomerID, CustomerName)
    VALUE ('97', '범근');
SELECT *
FROM Customers
ORDER BY CustomerID DESC;

INSERT INTO Customers
    (CustomerName)
    VALUE ('지성');

# Customers 테이블에 2개의 레코드를 입력하기
INSERT INTO Customers
    (CustomerID, CustomerName)
    VALUE (99, '민경');
SELECT *
FROM Customers
ORDER BY CustomerID DESC;

# Products 테이블에 2개의 레코드를 입력하기
INSERT INTO Products
    (ProductID, ProductName)
    VALUE (78, '아이폰');
SELECT *
FROM Products
ORDER BY ProductID DESC;