-- Retrieves all bookings (booking_id) and the respective users who made those bookings (their full name)

SELECT
	a.booking_id,
	first_name || ' ' || b.last_name guest_name
FROM airbnb_clone_0."Booking" a
INNER JOIN airbnb_clone_0."User" b
ON a.user_id = b.user_id;

-- Retrieves all properties (property_id) and their reviews (rating & comment), including properties that have no reviews.

SELECT
	a.property_id,
	b.rating,
	b.comment
FROM airbnb_clone_0."Property" a
LEFT JOIN airbnb_clone_0."Review" b
ON a.property_id = b.property_id;

-- Retrieves all users and all bookings (all records), even if the user has no booking or a booking is not linked to a user.

SELECT DISTINCT
	*
FROM airbnb_clone_0."User" a
FULL OUTER JOIN airbnb_clone_0."Booking" b
ON a.user_id = b.user_id
