create database shopig
use shopig
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName NVARCHAR(255)
);
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName NVARCHAR(255),
    CategoryID INT,
    Price DECIMAL(10, 2),
	Picture NVARCHAR(1000),
    Description_ TEXT,
    CONSTRAINT fk_CategoryID FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName NVARCHAR(255),
    Email NVARCHAR(255),
    Address_ NVARCHAR(255),
	Pass NVARCHAR(225)
);
CREATE TABLE Carts (
    CartID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    Quantity INT,
    CONSTRAINT fk_ProductID FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    CONSTRAINT fk_CustomerID FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);




INSERT INTO Categories (CategoryID, CategoryName) 
VALUES
    (1, 'Category 1'),
    (2, 'Category 2');

INSERT INTO Products 
VALUES
    (1, 'Product 1', 1, 10.99,'Null','Description for Product 1'),
    (2, 'Product 2', 1, 15.99,'Null', 'Description for Product 2'),
    (3, 'Product 3', 1, 20.99,'Null', 'Description for Product 3'),
    (4, 'Product 4', 1, 12.99,'Null', 'Description for Product 4'),
    (5, 'Product 5', 1, 18.99,'Null', 'Description for Product 5'),
    (6, 'Product 6', 1, 22.99,'Null', 'Description for Product 6'),
    (7, 'Product 7', 1, 9.99,'Null', 'Description for Product 7'),
    (8, 'Product 8', 1, 16.99,'Null', 'Description for Product 8'),
    (9, 'Product 9', 1, 24.99,'Null', 'Description for Product 9'),
    (10, 'Product 10', 1, 11.99,'Null', 'Description for Product 10'),
    (11, 'Product 11', 1, 17.99,'Null', 'Description for Product 11'),
    (12, 'Product 12', 1, 21.99,'Null', 'Description for Product 12'),
    (13, 'Product 13', 1, 14.99,'Null', 'Description for Product 13'),
    (14, 'Product 14', 1, 19.99,'Null', 'Description for Product 14'),
    (15, 'Product 15', 2, 25.99,'Null', 'Description for Product 15');


INSERT INTO Customers 
VALUES
    (1, 'hoang', 'customer1@example.com', 'Address 1','111'),
    (2, 'Customer 2', 'customer2@example.com', 'Address 2','111'),
    (3, 'Customer 3', 'customer3@example.com', 'Address 3','111');

	delete from Products
	SELECT * FROM Products
	SELECT * FROM Customers
	SELECT * FROM Categories	
	SELECT * FROM Carts	