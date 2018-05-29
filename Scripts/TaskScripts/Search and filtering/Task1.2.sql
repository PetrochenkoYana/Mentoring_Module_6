/*Задание 1.2. Использование операторов IN, DISTINCT, ORDER BY, NOT

1.	Выбрать из таблицы Customers всех заказчиков, проживающих в USA и Canada. Запрос сделать с только помощью оператора IN. 
Возвращать колонки с именем пользователя и названием страны в результатах запроса. Упорядочить результаты запроса по имени заказчиков и по месту проживания.


2.	Выбрать из таблицы Customers всех заказчиков, не проживающих в USA и Canada. Запрос сделать с помощью оператора IN. 
Возвращать колонки с именем пользователя и названием страны в результатах запроса. Упорядочить результаты запроса по имени заказчиков.


3.	Выбрать из таблицы Customers все страны, в которых проживают заказчики. 
Страна должна быть упомянута только один раз и список отсортирован по убыванию. Не использовать предложение GROUP BY. 
Возвращать только одну колонку в результатах запроса. 

*/
SELECT CustomerID, Country FROM Northwind.Customers 
WHERE Country IN ('USA','Canada') 
ORDER BY CustomerID, Address


SELECT CustomerID, Country FROM Northwind.Customers 
WHERE Country NOT IN ('USA','Canada') 
ORDER BY CustomerID


SELECT DISTINCT Country FROM Northwind.Customers ORDER BY Country DESC 