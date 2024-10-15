USE db1;
DROP TABLE my_table48;
CREATE TABLE my_table48
(
    a    INT,
    name VARCHAR(20)
);
DROP TABLE my_table49;
CREATE TABLE my_table49
(
    b    INT,
    name VARCHAR(20)
);
INSERT INTO my_table48
VALUES (3, 'kim'),
       (4, 'lee'),
       (5, 'park'),
       (6, 'choi');

INSERT INTO my_table49
VALUES (4, '노벨상'),
       (5, '최우수상'),
       (6, '대상'),
       (7, '장려상'),
       (8, '참가상');
# 카테시안 곱
SELECT *
FROM my_table48
         JOIN my_table49;

# INNER JOIN
SELECT *
FROM my_table48 t48
         JOIN my_table49 t49
              ON t48.a = t49.b;

# left join
SELECT *
FROM my_table48 t48
         LEFT JOIN my_table49 t49
                   ON t48.a = t49.b;

# right join
SELECT *
FROM my_table48 t48
         RIGHT JOIN my_table49 t49
                    ON t48.a = t49.b;
# 왼쪽 테이블만 있는 레코드들
SELECT *
FROM my_table48 t8
         LEFT JOIN my_table49 t9
                   ON t8.a = t9.b
WHERE b IS NULL;

# 오른쪽 테이블에만 있는 레코드들
SELECT *
FROM my_table48 t8
         RIGHT JOIN my_table49 t9
                    ON t8.a = t9.b
WHERE a IS NULL;

USE w3schools;
#주문한적 없는 고객명
SELECT c.CustomerName
FROM Orders o
         RIGHT JOIN Customers c
                    ON o.CustomerID = c.CustomerID
WHERE o.CustomerID IS NULL;


# 주문한 적 있는 고객들
SELECT o.CustomerID, c.CustomerID
FROM Orders o
         RIGHT JOIN Customers c
                    ON o.CustomerID = c.CustomerID
WHERE o.CustomerID IS NULL;

# 주문을 처리한 저 없는 직원명 조회 (Orders, Employees)
SELECT *
FROM Orders o
         JOIN Employees e
              ON o.EmployeeID = e.EmployeeID
WHERE o.EmployeeID IS NULL;

# 주문된 적 없는 상품명 조회 (OrderDetails, Products)

