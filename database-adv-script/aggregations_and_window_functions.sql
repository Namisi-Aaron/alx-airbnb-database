-- Finds the total number of bookings made by each user

SELECT
	user_id,
	COUNT(user_id) no_of_bookings
FROM airbnb_clone_0."Booking"
GROUP BY user_id;

-- Ranks properties based on the total number of bookings received (most to least bookings)

SELECT
	property_id,
	RANK() OVER (ORDER BY no_of_bookings DESC) AS RANK
FROM (
	SELECT
		property_id,
		COUNT(property_id) no_of_bookings
	FROM airbnb_clone_0."Booking"
	GROUP BY property_id
);
