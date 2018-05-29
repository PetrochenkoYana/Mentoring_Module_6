/*Задание 2.1. Использование агрегатных функций (SUM, COUNT)

1.	Найти общую сумму всех заказов из таблицы Order Details с учетом количества закупленных товаров и скидок по ним. 
Результатом запроса должна быть одна запись с одной колонкой с названием колонки 'Totals'.

2.	По таблице Orders найти количество заказов, которые еще не были доставлены (т.е. в колонке ShippedDate нет значения даты доставки). 
Использовать при этом запросе только оператор COUNT. Не использовать предложения WHERE и GROUP.

3.	По таблице Orders найти количество различных покупателей (CustomerID), сделавших заказы. 
Использовать функцию COUNT и не использовать предложения WHERE и GROUP.*/

SELECT SUM(UnitPrice * Quantity *(1- Discount)) Totals FROM Northwind.[Order Details]

SELECT COUNT(case when ShippedDate IS NULL then 1 else null end ) FROM Northwind.Orders

Select COUNT(*) from (SELECT DISTINCT(CustomerID) from Northwind.Orders) as o

