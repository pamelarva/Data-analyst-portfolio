-- Total Bookings
SELECT 
COUNT(*) AS total_bookings
FROM hotel_bookings;
-- Cancellation Rate
SELECT 
ROUND(SUM(is_canceled)/COUNT(*) * 100,2) 
AS cancellation_rate
FROM hotel_bookings;
-- Average Daily Rate
SELECT 
ROUND(AVG(adr),2) AS average_adr
FROM hotel_bookings;
-- Total Guests
SELECT 
SUM(adults + children + babies) AS total_guests
FROM hotel_bookings;
-- Most Reserved Room Type
SELECT 
reserved_room_type,
COUNT(*) AS total_booking
FROM hotel_bookings
GROUP BY reserved_room_type
ORDER BY total_booking DESC;
-- Cancellation by Hotel
SELECT 
hotel,
SUM(is_canceled) AS total_cancellation
FROM hotel_bookings
GROUP BY hotel;
-- Customer Type Distribution
SELECT 
customer_type,
COUNT(*) AS total_customer
FROM hotel_bookings
GROUP BY customer_type
ORDER BY total_customer DESC;
-- Top Countries by Booking
SELECT 
country,
COUNT(*) AS total_booking
FROM hotel_bookings
GROUP BY country
ORDER BY total_booking DESC
LIMIT 5;
-- Monthly Booking Trend
SELECT 
arrival_date_month,
COUNT(*) AS total_booking
FROM hotel_bookings
GROUP BY arrival_date_month
ORDER BY total_booking DESC;