USE w3schools;

# 모든 레코드 삭제(!)
DELETE
FROM Customers;

SELECT *
FROM Customers
WHERE CustomerName = '흥민';

DELETE
FROM Customers
WHERE CustomerName = '흥민';

# 꼭 DELETE 실행 전 같은 WHERE 절로 SELECT 해볼 것!
SELECT *
FROM Customers
WHERE CustomerID = 101;
DELETE
FROM Customers
WHERE CustomerID = 101;

SELECT *
FROM Customers
WHERE CustomerID = '1';