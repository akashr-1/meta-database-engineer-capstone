use coursera_capstone;

-- Insert data into Customers table
INSERT INTO Customers (CustomerID, FullName, ContactNumber, Email, Address, City, Country)
VALUES
    (1, 'John Doe', '1234567890', 'john.doe@example.com', '123 Main St', 'New York', 'USA'),
    (2, 'Jane Smith', '9876543210', 'jane.smith@example.com', '456 Park Ave', 'Los Angeles', 'USA'),
    (3, 'Michael Johnson', '4567890123', 'michael.johnson@example.com', '789 Broadway', 'Chicago', 'USA'),
    (4, 'Sophia Lee', '7890123456', 'sophia.lee@example.com', '101 Oak St', 'Toronto', 'Canada'),
    (5, 'Alexander Wang', '3456789012', 'alex.wang@example.com', '22 Main Rd', 'Beijing', 'China'),
    (6, 'Isabella Silva', '5678901234', 'isabella.silva@example.com', '33 Pine St', 'Sao Paulo', 'Brazil'),
    (7, 'Liam Chen', '6789012345', 'liam.chen@example.com', '44 Elm St', 'Shanghai', 'China'),
    (8, 'Olivia Garcia', '8901234567', 'olivia.garcia@example.com', '55 Maple Ave', 'Barcelona', 'Spain'),
    (9, 'William Kim', '9012345678', 'william.kim@example.com', '66 Oak St', 'Seoul', 'South Korea'),
    (10, 'Ava Nguyen', '2345678901', 'ava.nguyen@example.com', '77 Cedar Rd', 'Ho Chi Minh City', 'Vietnam');

-- Insert data into MenuItem table
INSERT INTO MenuItem (MenuItemID, CourseName, StarterName, DesertName, DrinkName, SidesName, Description)
VALUES
    (1, 'Course 1', 'Starter A', 'Desert A', 'Drink A', 'Sides A', 'Description 1'),
    (2, 'Course 2', 'Starter B', 'Desert B', 'Drink B', 'Sides B', 'Description 2'),
    (3, 'Course 3', 'Starter C', 'Desert C', 'Drink C', 'Sides C', 'Description 3'),
    (4, 'Course 1', 'Starter D', 'Desert D', 'Drink D', 'Sides D', 'Description 4'),
    (5, 'Course 2', 'Starter E', 'Desert E', 'Drink E', 'Sides E', 'Description 5'),
    (6, 'Course 3', 'Starter F', 'Desert F', 'Drink F', 'Sides F', 'Description 6'),
    (7, 'Course 1', 'Starter G', 'Desert G', 'Drink G', 'Sides G', 'Description 7'),
    (8, 'Course 2', 'Starter H', 'Desert H', 'Drink H', 'Sides H', 'Description 8'),
    (9, 'Course 3', 'Starter I', 'Desert I', 'Drink I', 'Sides I', 'Description 9'),
    (10, 'Course 1', 'Starter J', 'Desert J', 'Drink J', 'Sides J', 'Description 10');
    
-- Insert data into Menu table
INSERT INTO Menu (MenuID, MenuItemID, MenuName, Cuisine, Price, Ingredients)
VALUES
    (1, 1, 'Menu 1', 'Cuisine A', 25.00, 'Ingredient 1, Ingredient 2, Ingredient 3'),
    (2, 2, 'Menu 2', 'Cuisine B', 30.00, 'Ingredient 4, Ingredient 5, Ingredient 6'),
    (3, 3, 'Menu 3', 'Cuisine C', 20.00, 'Ingredient 7, Ingredient 8, Ingredient 9'),
    (4, 4, 'Menu 4', 'Cuisine A', 35.00, 'Ingredient 10, Ingredient 11, Ingredient 12'),
    (5, 5, 'Menu 5', 'Cuisine B', 40.00, 'Ingredient 13, Ingredient 14, Ingredient 15'),
    (6, 6, 'Menu 6', 'Cuisine C', 22.00, 'Ingredient 16, Ingredient 17, Ingredient 18'),
    (7, 7, 'Menu 7', 'Cuisine A', 28.00, 'Ingredient 19, Ingredient 20, Ingredient 21'),
    (8, 8, 'Menu 8', 'Cuisine B', 32.00, 'Ingredient 22, Ingredient 23, Ingredient 24'),
    (9, 9, 'Menu 9', 'Cuisine C', 18.00, 'Ingredient 25, Ingredient 26, Ingredient 27'),
    (10, 10, 'Menu 10', 'Cuisine A', 26.00, 'Ingredient 28, Ingredient 29, Ingredient 30');
    
-- Insert data into Orders table
INSERT INTO Orders (OrderID, MenuID, CustomerID, TotalCost, OrderDate, DeliveryDate, OrderStatus)
VALUES
    (1, 1, 1, 150.00, '2023-08-01', '2023-08-05', 'Pending'),
    (2, 2, 2, 100.00, '2023-08-02', '2023-08-06', 'Completed'),
    (3, 3, 3, 80.00, '2023-08-03', '2023-08-07', 'Processing'),
    (4, 4, 4, 120.00, '2023-08-04', '2023-08-08', 'Pending'),
    (5, 5, 5, 200.00, '2023-08-05', '2023-08-09', 'Processing'),
    (6, 6, 6, 50.00, '2023-08-06', '2023-08-10', 'Completed'),
    (7, 7, 7, 180.00, '2023-08-07', '2023-08-11', 'Processing'),
    (8, 8, 8, 90.00, '2023-08-08', '2023-08-12', 'Pending'),
    (9, 9, 9, 60.00, '2023-08-09', '2023-08-13', 'Completed'),
    (10, 10, 10, 70.00, '2023-08-10', '2023-08-14', 'Pending');