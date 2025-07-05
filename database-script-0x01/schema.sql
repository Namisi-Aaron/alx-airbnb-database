-- This query creates a database schema for the project
CREATE schema IF NOT EXISTS airbnb_clone_0;

-- ENUM types for user_role, booking_status and payment_method
CREATE TYPE IF NOT EXISTS airbnb_clone_0.user_role AS ENUM ('guest', 'host', 'admin');
CREATE TYPE IF NOT EXISTS airbnb_clone_0.booking_status AS ENUM ('pending', 'confirmed', 'canceled');
CREATE TYPE IF NOT EXISTS airbnb_clone_0.payment_method AS ENUM ('credit_card', 'paypal', 'stripe');

-- User
CREATE TABLE IF NOT EXISTS IF NOT EXISTS airbnb_clone_0."User" (
    user_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    phone_number VARCHAR(20),
    role airbnb_clone_0.user_role NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_user_id ON airbnb_clone_0."User" (user_id);
CREATE INDEX IF NOT EXISTS idx_user_email ON airbnb_clone_0."User" (email);

-- Property
CREATE TABLE IF NOT EXISTS airbnb_clone_0."Property" (
    property_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    host_id UUID NOT NULL,
    name VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    location VARCHAR(255) NOT NULL,
    pricepernight DECIMAL(10, 2) NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (host_id) REFERENCES airbnb_clone_0."User" (user_id) ON DELETE CASCADE
);

CREATE INDEX IF NOT EXISTS idx_property_id ON airbnb_clone_0."Property" (property_id);
CREATE INDEX IF NOT EXISTS idx_property_host ON airbnb_clone_0."Property" (host_id);

-- Booking
CREATE TABLE IF NOT EXISTS airbnb_clone_0."Booking" (
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
);

CREATE INDEX IF NOT EXISTS idx_booking_id ON airbnb_clone_0."Booking" (booking_id);
CREATE INDEX IF NOT EXISTS idx_booking_property ON airbnb_clone_0."Booking" (property_id);
CREATE INDEX IF NOT EXISTS idx_booking_user ON airbnb_clone_0."Booking" (user_id);

-- Payment
CREATE TABLE IF NOT EXISTS airbnb_clone_0."Payment" (
    payment_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    booking_id UUID NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    payment_date TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    payment_method airbnb_clone_0.payment_method NOT NULL,
    FOREIGN KEY (booking_id) REFERENCES airbnb_clone_0."Booking" (booking_id) ON DELETE CASCADE
);

CREATE INDEX IF NOT EXISTS idx_payment_id ON airbnb_clone_0."Payment" (payment_id);
CREATE INDEX IF NOT EXISTS idx_payment_booking ON airbnb_clone_0."Payment" (booking_id);

-- Review
CREATE TABLE IF NOT EXISTS airbnb_clone_0."Review" (
    review_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    property_id UUID NOT NULL,
    user_id UUID NOT NULL,
    rating INTEGER NOT NULL,
    comment TEXT NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (property_id) REFERENCES airbnb_clone_0."Property" (property_id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES airbnb_clone_0."User" (user_id) ON DELETE CASCADE,
    CONSTRAINT valid_rating CHECK (rating >= 1 AND rating <= 5)
);

CREATE INDEX IF NOT EXISTS idx_review_id ON airbnb_clone_0."Review" (review_id);
CREATE INDEX IF NOT EXISTS idx_review_property ON airbnb_clone_0."Review" (property_id);
CREATE INDEX IF NOT EXISTS idx_review_user ON airbnb_clone_0."Review" (user_id);

-- Message
CREATE TABLE IF NOT EXISTS airbnb_clone_0."Message" (
    message_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    sender_id UUID NOT NULL,
    recipient_id UUID NOT NULL,
    message_body TEXT NOT NULL,
    sent_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (sender_id) REFERENCES airbnb_clone_0."User" (user_id) ON DELETE CASCADE,
    FOREIGN KEY (recipient_id) REFERENCES airbnb_clone_0."User" (user_id) ON DELETE CASCADE
);

CREATE INDEX IF NOT EXISTS idx_message_id ON airbnb_clone_0."Message" (message_id);
CREATE INDEX IF NOT EXISTS idx_message_sender ON airbnb_clone_0."Message" (sender_id);
CREATE INDEX IF NOT EXISTS idx_message_recipient ON airbnb_clone_0."Message" (recipient_id);