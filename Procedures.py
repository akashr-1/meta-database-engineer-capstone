import mysql.connector

# Connect to the database
conn = mysql.connector.connect(
    host="onepercent.cuzm5cyvxxfo.ap-south-1.rds.amazonaws.com",
    user="akash",
    password="",
    database="coursera_capstone"
)

# Create a cursor
cursor = conn.cursor()

# Call GetMaxQuantity() procedure
cursor.callproc("GetMaxQuantity")
result_set = cursor.stored_results()
result = result_set.fetchone()
max_quantity = result[0]
print("Maximum Quantity:", max_quantity)

# Call ManageBooking() procedure with available table number
available_table_number = 1
cursor.callproc("ManageBooking", [available_table_number, "Booked"])
conn.commit()
print("Booking for table", available_table_number, "is now booked.")

# Call ManageBooking() procedure with already reserved table number
reserved_table_number = 2
cursor.callproc("ManageBooking", [reserved_table_number, "Rejected"])
conn.commit()
print("Booking for table", reserved_table_number, "is already reserved, booking rejected.")

# Call AddBooking() procedure
booking_id = 99
customer_id = 99
table_number = 99
booking_date = '2022-12-10'
cursor.callproc("AddBooking", [booking_id, customer_id, table_number, booking_date])
conn.commit()
print("Booking for table", table_number, "is added.")

# Call UpdateBooking() procedure
table_number = 99
booking_date = '2022-1-10'
cursor.callproc("UpdateBooking", [table_number, booking_date])
conn.commit()
print("Booking for table", table_number, "is updated.")

# Call CancelBooking() procedure
table_number = 99
cursor.callproc("CancelBooking", [table_number])
conn.commit()
print("Booking for table", table_number, "is canceled.")

# Close the cursor and connection
cursor.close()
conn.close()
