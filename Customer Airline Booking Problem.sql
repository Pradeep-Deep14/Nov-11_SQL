CREATE TABLE customers (customer_id INT PRIMARY KEY, customer_name VARCHAR(100));
     CREATE TABLE flights (flight_id INT PRIMARY KEY, customer_id INT, airline VARCHAR(50), flight_date DATE);
     CREATE TABLE hotel_bookings (booking_id INT PRIMARY KEY, customer_id INT, hotel_name VARCHAR(100), platform VARCHAR(50));
     INSERT INTO customers VALUES (1, 'Emily Taylor'), (2, 'Jack Moore');
     INSERT INTO flights VALUES (1, 1, 'British Airways', '2023-04-15');
     INSERT INTO hotel_bookings VALUES (1, 1, 'Hilton', 'Booking.com');


/*
Find all customers who booked flights through British Airways but stayed at hotels partnered with Booking.com.
*/

SELECT * FROM CUSTOMERS
SELECT * FROM FLIGHTS
SELECT * FROM HOTEL_BOOKINGS


SELECT C.CUSTOMER_NAME,
       F.AIRLINE,
       H.PLATFORM
FROM CUSTOMERS C
JOIN FLIGHTS F ON C.CUSTOMER_ID=F.CUSTOMER_ID
JOIN HOTEL_BOOKINGS H ON F.CUSTOMER_ID=H.CUSTOMER_ID
WHERE F.AIRLINE = 'British Airways'
AND H.PLATFORM ='Booking.com'