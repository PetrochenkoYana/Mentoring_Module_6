CREATE TABLE [Northwind].[CreditCards]
(
	[Id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY UNIQUE, 
    [Card_Number] NCHAR(10) NOT NULL, 
    [Expiration_Date] DATETIME NOT NULL, 
    [Employee] INT NOT NULL,
	CONSTRAINT [FK_CreditCards_Employee] FOREIGN KEY ([Employee]) REFERENCES [Northwind].Employees ([EmployeeID]) ON DELETE NO ACTION ON UPDATE NO ACTION
)
