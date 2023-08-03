-- Create the Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    City VARCHAR(100),
    Country VARCHAR(100),
    PostalCode VARCHAR(10),
    CountryCode VARCHAR(2)
);

-- Create the Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100)
);

-- Create the Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    DeliveryDate DATE,
    CustomerID INT,
    Cost DECIMAL(10, 2),
    Sales DECIMAL(10, 2),
    Quantity INT,
    Discount DECIMAL(5, 2),
    DeliveryCost DECIMAL(10, 2),
    CourseName VARCHAR(100),
    CuisineName VARCHAR(100),
    StarterName VARCHAR(100),
    DesertName VARCHAR(100),
    Drink VARCHAR(100),
    Sides VARCHAR(100),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Create the Menu table
CREATE TABLE Menu (
    MenuID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    CuisineName VARCHAR(100),
    StarterName VARCHAR(100),
    DesertName VARCHAR(100),
    Drink VARCHAR(100),
    Sides VARCHAR(100),
    ProductID INT,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
