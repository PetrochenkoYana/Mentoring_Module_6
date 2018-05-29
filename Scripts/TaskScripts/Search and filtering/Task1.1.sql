/*Задание 1.1. Простая фильтрация данных.

1.	Выбрать в таблице Orders заказы, которые были доставлены после 6 мая 1998 года (колонка ShippedDate) включительно и которые доставлены с ShipVia >= 2. 
Запрос должен возвращать только колонки OrderID, ShippedDate и ShipVia. 


2.	Написать запрос, который выводит только недоставленные заказы из таблицы Orders. 
В результатах запроса возвращать для колонки ShippedDate вместо значений NULL строку ‘Not Shipped’ (использовать системную функцию CASЕ). 
Запрос должен возвращать только колонки OrderID и ShippedDate.


3.	Выбрать в таблице Orders заказы, которые были доставлены после 6 мая 1998 года (ShippedDate) не включая эту дату или которые еще не доставлены.
В запросе должны возвращаться только колонки OrderID (переименовать в Order Number) и ShippedDate (переименовать в Shipped Date).
В результатах запроса возвращать для колонки ShippedDate вместо значений NULL строку ‘Not Shipped’, для остальных значений возвращать дату в формате по умолчанию.

*/
SELECT OrderID, ShippedDate,ShipVia 
		from Northwind.Orders 
		where ShippedDate >='1998-05-06 00:00:00.000' 
		and ShipVia >= 2


SELECT OrderID, ShippedDate = 
        CASE 
		WHEN ShippedDate IS NULL THEN 'Not Shipped'
		END
		FROM (SELECT OrderID, ShippedDate FROM Northwind.Orders 
		WHERE ShippedDate IS NULL ) AS NullOrders


 SELECT OrderID [Order Number], 
 CASE 
 WHEN ShippedDate IS NULL THEN 'Not Shipped' 
 ELSE CONVERT(VARCHAR, ShippedDate)
 END
 AS [Shipped Date]
 FROM Northwind.Orders
 WHERE ShippedDate>'May 6 1998 12:00PM' OR ShippedDate IS NULL