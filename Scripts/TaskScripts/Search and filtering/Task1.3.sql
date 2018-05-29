/*Задание 1.3. Использование оператора BETWEEN, DISTINCT

1.	Выбрать все заказы (OrderID) из таблицы Order Details (заказы не должны повторяться),
 где встречаются продукты с количеством от 3 до 10 включительно – это колонка Quantity в таблице Order Details. 
 Использовать оператор BETWEEN. Запрос должен возвращать только колонку OrderID.


2.	Выбрать всех заказчиков из таблицы Customers, у которых название страны начинается на буквы из диапазона b и g. 
Использовать оператор BETWEEN. Проверить, что в результаты запроса попадает Germany. 
Запрос должен возвращать только колонки CustomerID и Country и отсортирован по Country.


3.	Выбрать всех заказчиков из таблицы Customers, у которых название страны начинается на буквы из диапазона b и g, не используя оператор BETWEEN. */

SELECT DISTINCT OrderID FROM Northwind.[Order Details]
WHERE Quantity BETWEEN 3 AND 10

SELECT CustomerID, Country FROM Northwind.Customers
WHERE SUBSTRING(Country,1,1) BETWEEN 'b' AND 'g' ORDER BY Country

SELECT CustomerID, Country FROM Northwind.Customers
WHERE Country>= 'b' AND Country<'h' ORDER BY Country