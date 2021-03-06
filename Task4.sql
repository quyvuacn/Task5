CREATE DATABASE ASM_TASK4
GO

USE ASM_TASK4
GO

CREATE TABLE Product(
	ProductID INT PRIMARY KEY,
	Name NVARCHAR(200) NOT NULL,
	Description NVARCHAR(200) NOT NULL,
	Unit NVARCHAR(20) NOT NULL,
	Price MONEY NOT NULL,
	Quantity INT NOT NULL CHECK(Quantity>0),
	Status NVARCHAR(200)
)
GO

CREATE TABLE Customer(
	CustomerID INT PRIMARY KEY,
	CustomerName NVARCHAR(50) NOT NULL,
	Address NVARCHAR(200) DEFAULT(N'Chưa cập nhật'),
	Tel INT,
	Status NVARCHAR(10)
)
GO

CREATE TABLE ProductOrder(
	OrderID INT PRIMARY KEY,
	CustomerID INT FOREIGN KEY REFERENCES Customer(CustomerID),
	OrderDate DATETIME NOT NULL,	
	Status NVARCHAR(50) NOT NULL,
)
GO

CREATE TABLE OrderDetails(
	OrderID INT FOREIGN KEY REFERENCES ProductOrder(OrderID),
	ProductID INT FOREIGN KEY REFERENCES Product(ProductID),
	AddDress NVARCHAR(200) NOT NULL,
	Price INT NOT NULL,
	Quantity INT NOT NULL CHECK(Quantity > 0),
)
GO




