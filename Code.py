import mysql.connector

# Connect to the MySQL database
try:
    db_connection = mysql.connector.connect(
        host='localhost',
        user='root',
        password='',
        database='coursera'
    )
    cursor = db_connection.cursor()

    # Create the GetMaxQuantity() procedure
    cursor.execute("""
    CREATE PROCEDURE GetMaxQuantity()
    BEGIN
        SELECT MAX(Quantity) AS MaxQuantity FROM Orders;
    END
    """)

    # Create the ManageBooking() procedure
    cursor.execute("""
    CREATE PROCEDURE ManageBooking(IN order_id INT, IN new_status VARCHAR(50))
    BEGIN
        UPDATE Orders
        SET OrderStatus = new_status
        WHERE OrderID = order_id;
    END
    """)

    # Create the UpdateBooking() procedure
    cursor.execute("""
    CREATE PROCEDURE UpdateBooking(IN order_id INT, IN new_quantity INT)
    BEGIN
        UPDATE Orders
        SET Quantity = new_quantity
        WHERE OrderID = order_id;
    END
    """)

    # Create the AddBooking() procedure
    cursor.execute("""
    CREATE PROCEDURE AddBooking(IN order_id INT, IN order_date DATE, IN customer_id INT, IN quantity INT)
    BEGIN
        INSERT INTO Orders (OrderID, OrderDate, CustomerID, Quantity)
        VALUES (order_id, order_date, customer_id, quantity);
    END
    """)

    # Create the CancelBooking() procedure
    cursor.execute("""
    CREATE PROCEDURE CancelBooking(IN order_id INT)
    BEGIN
        DELETE FROM Orders
        WHERE OrderID = order_id;
    END
    """)
    print("Procedure 'CancelBooking' created successfully!")

    # Commit the changes to the database
    db_connection.commit()

except mysql.connector.Error as error:
    print(f"Error: {error}")
finally:
    # Close the database connection
    if 'cursor' in locals() and cursor is not None:
        cursor.close()
    if 'db_connection' in locals() and db_connection.is_connected():
        db_connection.close()
        print("Database connection closed.")
