USE w3schools;

# <, <= >, >=, <>, != LIKE

# AND OR NOT
SELECT *
FROM Products
WHERE Price > 10.00
  AND Price < 20.00
ORDER BY Price;

SELECT *
FROM Customers
WHERE Country = 'Mexico'
   OR Country = 'USA'
ORDER BY Country, City;

SELECT *
FROM Customers
WHERE Country <> 'Mexico';
SELECT *
FROM Customers
WHERE NOT Country = 'Mexico';

# 멕시코와 USA가 아닌 고객들
SELECT *
FROM Customers
WHERE NOT (Country = 'Mexico'
    OR Country = 'USA');
SELECT *
FROM Customers
WHERE (Country != 'Mexico'
    AND Country != 'USA');

# AND OR NOT 이 여러 번 조합될 시 () 꼭 사용해서 읽기 편하게 작성

# 미국이나 브라질에 사는 이름이 A로 시작하는 고객들
SELECT *
FROM Customers
WHERE CustomerName LIKE 'R%'
  AND (Country = 'USA'
    OR Country = 'BRAZIL');

# 1950년대 태어난 직원들 조회
SELECT *
FROM Employees
WHERE BirthDate LIKE '195_-__-__';

# 가격이 10.00 작거나 100.00보다 큰 상품들
SELECT *
FROM Products
WHERE NOT (Price >= 10.00
    AND Price <= 100.00);

# 1997년 7월에 주문된 주문들
SELECT *
FROM Orders
WHERE OrderDate LIKE '1997-07-__';

# 미국이나 영국에 있는 공급자들
SELECT *
FROM Suppliers
WHERE Country = 'USA'
   OR Country = 'UK'
ORDER BY Country, City;