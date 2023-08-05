use coursera_capstone;

-- Create the Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FullName VARCHAR(100),
    ContactNumber VARCHAR(20),
    Email VARCHAR(100),
    Address VARCHAR(200),
    City VARCHAR(100),
    Country VARCHAR(100)
);

-- Create the MenuItem table
CREATE TABLE MenuItem (
    MenuItemID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    StarterName VARCHAR(100),
    DesertName VARCHAR(100),
    DrinkName VARCHAR(100),
    SidesName VARCHAR(100),
    Description VARCHAR(500)
);

-- Create the Menu table
CREATE TABLE Menu (
    MenuID INT PRIMARY KEY,
    MenuItemID INT,
    MenuName VARCHAR(100),
    Cuisine VARCHAR(100),
    Price DECIMAL(10, 2),
    Ingredients VARCHAR(500),
    FOREIGN KEY (MenuItemID) REFERENCES MenuItem(MenuItemID)
);

-- Create the Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    MenuID INT,
    CustomerID INT,
    TotalCost DECIMAL(10, 2),
    OrderDate DATE,
    DeliveryDate DATE,
    OrderStatus VARCHAR(50),
    FOREIGN KEY (MenuID) REFERENCES Menu(MenuID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);