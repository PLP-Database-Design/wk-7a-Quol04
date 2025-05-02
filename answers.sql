-- Question 1 Achieving 1NF (First Normal Form)

CREATE DATABASE NormalizedDB;

USE normalizedDB;

CREATE TABLE productDetails(
OrderID INT ,
CustomerName VARCHAR(50),
Products VARCHAR(50)
);


---- Insert data into the productDetails table
INSERT INTO productDetails(OrderID, CustomerName, Products)
VALUES (101,'John Doe','Laptop'),
(101,'John Doe','Mouse'),
(102,'Jane Smith','Tablet'),
(102,'Jane Smith','Keyboard'),
(102,'Jane Smith','Mouse'),
(103,'Emily Clark','Phone');


-- Question 2 Achieving 2NF (Second Normal Form)

CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  CustomerName VARCHAR(100)
);



CREATE TABLE OrderDetails (
  OrderID INT,
  Product VARCHAR(100),
  Quantity INT,
  PRIMARY KEY (OrderID),
  FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

INSERT INTO Orders (OrderID, CustomerName)
VALUES (101, 'John Doe'),
       (102, 'Jane Smith'),
       (103, 'Emily Clark');


INSERT INTO OrderDetails (OrderID, Product, Quantity)
VALUES (101, 'Laptop', 2),
        (101, 'Mouse', 1),
        (102, 'Tablet', 3),
        (102, 'Keyboard', 1),
        (102, 'Mouse', 2),
        (103, 'Phone', 1);