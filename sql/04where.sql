USE w3schools;

# SELECT 컬럼명들 FROM 테이블명
SELECT CustomerName, Address
FROM Customers;

# 조건에 맞는 행들 조회
# WHERE : 조회될 행의 조건이 작성되는 곳

# SELECT 컬럼명 FROM 테이블명 WHERE 조건
SELECT CustomerName
FROM Customers
WHERE Country = 'Mexico';

SELECT CustomerName
FROM Customers
WHERE Country = "Mexico";

SELECT *
FROM Employees
WHERE BirthDate = '1968-12-08';

SELECT *
FROM Products
WHERE Price = '10.00';

# spain 에 있는 공급자들(Suppliers)
SELECT *
FROM Suppliers
WHERE Country = 'spain';

# 상파울루(São Paulo)에 있는 고객들(Customers)
SELECT *

FROM Customers
WHERE City = 'São Paulo';

# 1963년 8월 30일 생인 직원(Employees)
SELECT *
FROM Employees
WHERE BirthDate = '1963-08-30';

# 2번 카테고리(Categories) 정보
SELECT *
FROM Categories
WHERE CategoryID = 2;

# 대소문자 구분 없음
# 수형식이면 따옴표 생략 가능