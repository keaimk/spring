USE w3schools;
SELECT *
FROM Orders;
SELECT *
FROM OrderDetails
WHERE OrderID = 10248;

# 1996년 7월 4일에 어떤 고객이 어떤 상품을 몇 개 주문했는지 조회
SELECT o.OrderDate, c.CustomerName, p.ProductName, od.Quantity
FROM Orders o
         JOIN OrderDetails od
              ON o.OrderID = od.OrderID
         JOIN Customers c
              ON c.CustomerID = o.CustomerID
         JOIN Products p
              ON od.ProductID = p.ProductID
WHERE OrderDate = '1996-07-04';

# 1996년 7월 4일에 주문된 상품과 카테고리 정보 조회
SELECT o.OrderDate, p.ProductName, c.CategoryName
FROM Orders o
         JOIN OrderDetails od
              ON o.OrderID = od.OrderID
         JOIN Products p
              ON p.ProductID = od.ProductID
         JOIN Categories c
              ON p.CategoryID = c.CategoryID
WHERE o.OrderDate = '1996-07-04';

# 5번 직원이 처리한 주문의 주문 날짜와 상품들 조회
SELECT e.LastName, e.FirstName, o.OrderDate, p.ProductName, od.Quantity
FROM Orders o
         JOIN OrderDetails od
              ON o.OrderID = od.OrderID
         JOIN Products p
              ON od.ProductID = p.ProductID
         JOIN Employees e
              ON o.EmployeeID = e.EmployeeID
WHERE e.EmployeeID = 5
ORDER BY o.OrderDate DESC;