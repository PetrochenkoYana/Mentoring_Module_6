/*Задание 2.3. Использование JOIN
1.	Определить продавцов, которые обслуживают регион 'Western' (таблица Region). 
2.	Выдать в результатах запроса имена всех заказчиков из таблицы Customers 
	и суммарное количество их заказов из таблицы Orders. 
	Принять во внимание, что у некоторых заказчиков нет заказов, 
	но они также должны быть выведены в результатах запроса. 
	Упорядочить результаты запроса по возрастанию количества заказов.
*/


SELECT DISTINCT E.EmployeeID, E.FirstName FROM [Northwind].EmployeeTerritories ET JOIN [Northwind].Employees E ON ET.EmployeeID = E.EmployeeID
	WHERE TerritoryID IN (SELECT t.TerritoryID 
								FROM [Northwind].Territories T 
								JOIN [Northwind].[Regions] R 
								ON T.RegionID = R.RegionID 
								WHERE R.RegionDescription = 'Western')


SELECT ContactName, O.Amount 
FROM Northwind.Customers C LEFT JOIN 
	(SELECT CustomerID, COUNT(OrderId) Amount FROM Northwind.Orders GROUP BY CustomerID) O 
	 ON C.CustomerID=O.CustomerID 
	 ORDER BY Amount