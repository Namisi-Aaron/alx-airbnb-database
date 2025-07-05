-- This query partitions the Booking table based on the start_date column.

CREATE TABLE airbnb_clone_0."Booking" (
    booking_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    property_id UUID NOT NULL,
    user_id UUID NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL,
    status airbnb_clone_0.booking_status NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (property_id) REFERENCES airbnb_clone_0."Property" (property_id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES airbnb_clone_0."User" (user_id) ON DELETE CASCADE,
    CONSTRAINT valid_booking_dates CHECK (end_date > start_date)
) PARTITION BY RANGE (sale_date);


--This query tests the perfomance of a query in a partitioned table
EXPLAIN ANALYZE SLELECT * FROM airbnb_clone_0."Booking"
WHERE sale_date BETWEEN '2021-01-01' AND '2021-12-30';