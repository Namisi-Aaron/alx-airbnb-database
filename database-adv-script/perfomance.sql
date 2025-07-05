-- This query retrieves all bookings along with the user details, property details, and payment details
SELECT * FROM airbnb_clone_0."Booking" b
LEFT JOIN airbnb_clone_0."User" u ON b."user_id" = u."booking_id"
LEFT JOIN airbnb_clone_0."Property" p ON b."property_id" = p."booking_id"
LEFT JOIN airbnb_clone_0."Payment" pay ON b."booking_id" = pay."booking_id";

-- This query analyzes the above query's performance
EXPLAIN ANALYZE SELECT * FROM airbnb_clone_0."Booking" b
LEFT JOIN airbnb_clone_0."User" u ON b."user_id" = u."booking_id"
LEFT JOIN airbnb_clone_0."Property" p ON b."property_id" = p."booking_id"
LEFT JOIN airbnb_clone_0."Payment" pay ON b."booking_id" = pay."booking_id";

-- Refactored query
SELECT
    b.booking_id,
    b.booking_status,
    b.user_id,
    u.first_name,
    u.last_name,
    p.property_name,
    p.location,
    pay.payment_date,
    pay.payment_amount,
    pay.payment_method
FROM airbnb_clone_0."Booking" b
LEFT JOIN airbnb_clone_0."User" u ON b."user_id" = u."booking_id"
LEFT JOIN airbnb_clone_0."Property" p ON b."property_id" = p."booking_id"
LEFT JOIN airbnb_clone_0."Payment" pay ON b."booking_id" = pay."booking_id";

-- Analisys of refactored query
EXPLAIN ANALYZE SELECT
    b.booking_id,
    b.booking_status,
    b.user_id,
    u.first_name,
    u.last_name,
    p.property_name,
    p.location,
    pay.payment_date,
    pay.payment_amount,
    pay.payment_method
FROM airbnb_clone_0."Booking" b
LEFT JOIN airbnb_clone_0."User" u ON b."user_id" = u."booking_id"
LEFT JOIN airbnb_clone_0."Property" p ON b."property_id" = p."booking_id"
LEFT JOIN airbnb_clone_0."Payment" pay ON b."booking_id" = pay."booking_id";
    