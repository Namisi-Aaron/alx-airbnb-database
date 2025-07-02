-- Finds all properties where the average rating is greater than 4.0
SELECT
    name,
    average_rating
FROM (
	SELECT
        a.property_id,
        a.name,
        CAST(AVG(b.rating) AS integer) average_rating
	FROM airbnb_clone_0."Property" a LEFT JOIN airbnb_clone_0."Review" b
	ON a.property_id = b.property_id
	GROUP BY a.property_id, a.name
)
WHERE average_rating > 4;

-- Finds all users who have made more than 3 bookings.
SELECT user_id FROM
(
	SELECT
		user_id,
		COUNT(user_id) no_of_bookings
	FROM airbnb_clone_0."Booking"
	GROUP BY user_id
)
WHERE no_of_bookings > 4;
