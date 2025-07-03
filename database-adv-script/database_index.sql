-- User
CREATE INDEX idx_user_id ON airbnb_clone_0."User" (user_id);
CREATE INDEX idx_user_email ON airbnb_clone_0."User" (email);

-- Property
CREATE INDEX idx_property_id ON airbnb_clone_0."Property" (property_id);
CREATE INDEX idx_property_host ON airbnb_clone_0."Property" (host_id);

-- Booking
CREATE INDEX idx_booking_id ON airbnb_clone_0."Booking" (booking_id);
CREATE INDEX idx_booking_property ON airbnb_clone_0."Booking" (property_id);
CREATE INDEX idx_booking_user ON airbnb_clone_0."Booking" (user_id);

-- Payment
CREATE INDEX idx_payment_id ON airbnb_clone_0."Payment" (payment_id);
CREATE INDEX idx_payment_booking ON airbnb_clone_0."Payment" (booking_id);

-- Review
CREATE INDEX idx_review_id ON airbnb_clone_0."Review" (review_id);
CREATE INDEX idx_review_property ON airbnb_clone_0."Review" (property_id);
CREATE INDEX idx_review_user ON airbnb_clone_0."Review" (user_id);

-- Message
CREATE INDEX idx_message_id ON airbnb_clone_0."Message" (message_id);
CREATE INDEX idx_message_sender ON airbnb_clone_0."Message" (sender_id);
CREATE INDEX idx_message_recipient ON airbnb_clone_0."Message" (recipient_id);