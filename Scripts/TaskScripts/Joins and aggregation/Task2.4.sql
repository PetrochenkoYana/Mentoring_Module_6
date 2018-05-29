/*Задание 2.4. Использование подзапросов
1.	Выдать всех поставщиков (колонка CompanyName в таблице Suppliers), у которых нет хотя бы одного продукта на складе (UnitsInStock в таблице Products равно 0). 
    Использовать вложенный SELECT для этого запроса с использованием оператора IN. 

2.	Выдать всех продавцов, которые имеют более 150 заказов. Использовать вложенный SELECT.

3.	Выдать всех заказчиков (таблица Customers), которые не имеют ни одного заказа (подзапрос по таблице Orders). 
    Использовать оператор EXISTS.
*/

SELECT CompanyName FROM Northwind.Suppliers S
WHERE S.SupplierID NOT  IN
(SELECT SupplierID FROM Northwind.Products WHERE UnitsInStock = 0)

SELECT FirstName FROM Northwind.Employees 
WHERE EmployeeID IN ( SELECT EmployeeID FROM Northwind.Orders GROUP BY EmployeeID HAVING COUNT(OrderID) > 150) 


SELECT CompanyName FROM Northwind.Customers C 
WHERE NOT EXISTS 
	(SELECT OrderID FROM Northwind.Orders O WHERE C.CustomerID = O.CustomerID)


