-- Retrieves all bookings and the respective users who made those bookings
SELECT * FROM Booking a INNER JOIN User b ON a.user_id = b.user_id;

