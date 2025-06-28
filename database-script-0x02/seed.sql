-- Inserting sample users
INSERT INTO "User" (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
-- Admins
('11111111-1111-1111-1111-111111111111', 'Admin', 'System', 'admin@example.com', '$2a$10$xJwL5v5Jz6UZJZJZJZJZJu', '+1234567890', 'admin', '2022-01-01 00:00:00'),

-- Hosts
('22222222-2222-2222-2222-222222222222', 'Sarah', 'Johnson', 'sarah@example.com', '$2a$10$xJwL5v5Jz6UZJZJZJZJZJu', '+1555123456', 'host', '2022-02-15 10:30:00'),
('33333333-3333-3333-3333-333333333333', 'Michael', 'Chen', 'michael@example.com', '$2a$10$xJwL5v5Jz6UZJZJZJZJZJu', '+1555234567', 'host', '2022-03-10 14:15:00'),
('44444444-4444-4444-4444-444444444444', 'Emily', 'Rodriguez', 'emily@example.com', '$2a$10$xJwL5v5Jz6UZJZJZJZJZJu', '+1555345678', 'host', '2022-04-05 09:45:00'),

-- Guests
('55555555-5555-5555-5555-555555555555', 'David', 'Wilson', 'david@example.com', '$2a$10$xJwL5v5Jz6UZJZJZJZJZJu', '+1555456789', 'guest', '2022-05-20 16:20:00'),
('66666666-6666-6666-6666-666666666666', 'Jessica', 'Brown', 'jessica@example.com', '$2a$10$xJwL5v5Jz6UZJZJZJZJZJu', '+1555567890', 'guest', '2022-06-12 11:10:00'),
('77777777-7777-7777-7777-777777777777', 'Robert', 'Taylor', 'robert@example.com', '$2a$10$xJwL5v5Jz6UZJZJZJZJZJu', '+1555678901', 'guest', '2022-07-08 13:45:00'),
('88888888-8888-8888-8888-888888888888', 'Olivia', 'Martinez', 'olivia@example.com', '$2a$10$xJwL5v5Jz6UZJZJZJZJZJu', '+1555789012', 'guest', '2022-08-25 08:30:00');

-- Inserting sample properties
INSERT INTO "Property" (property_id, host_id, name, description, location, pricepernight, created_at, updated_at) VALUES
-- Sarah's properties
('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'Cozy Mountain Cabin', 'Beautiful log cabin with mountain views and hot tub', 'Aspen, CO', 175.00, '2022-02-20 09:00:00', '2022-02-20 09:00:00'),
('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '22222222-2222-2222-2222-222222222222', 'Downtown Loft', 'Modern loft in the heart of the city', 'Denver, CO', 120.00, '2022-03-05 14:30:00', '2022-03-05 14:30:00'),

-- Michael's properties
('cccccccc-cccc-cccc-cccc-cccccccccccc', '33333333-3333-3333-3333-333333333333', 'Beachfront Villa', 'Luxury villa with private beach access', 'Miami, FL', 350.00, '2022-03-15 10:15:00', '2022-03-15 10:15:00'),
('dddddddd-dddd-dddd-dddd-dddddddddddd', '33333333-3333-3333-3333-333333333333', 'Garden Cottage', 'Charming cottage with beautiful gardens', 'Savannah, GA', 95.00, '2022-04-01 11:45:00', '2022-04-01 11:45:00'),

-- Emily's properties
('eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee', '44444444-4444-4444-4444-444444444444', 'Ski-in/Ski-out Condo', 'Direct access to the slopes with mountain views', 'Park City, UT', 275.00, '2022-04-10 08:00:00', '2022-04-10 08:00:00'),
('ffffffff-ffff-ffff-ffff-ffffffffffff', '44444444-4444-4444-4444-444444444444', 'Lake House Retreat', 'Peaceful lakefront property with dock', 'Lake Tahoe, CA', 195.00, '2022-05-05 13:20:00', '2022-05-05 13:20:00');

-- Inserting sample bookings
INSERT INTO "Booking" (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at) VALUES
-- David's bookings
('11111111-1111-1111-1111-111111111111', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '55555555-5555-5555-5555-555555555555', '2023-01-15', '2023-01-20', 875.00, 'confirmed', '2022-12-01 10:30:00'),
('22222222-2222-2222-2222-222222222222', 'cccccccc-cccc-cccc-cccc-cccccccccccc', '55555555-5555-5555-5555-555555555555', '2023-03-10', '2023-03-17', 2450.00, 'confirmed', '2022-12-15 14:45:00'),

-- Jessica's bookings
('33333333-3333-3333-3333-333333333333', 'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '66666666-6666-6666-6666-666666666666', '2023-02-05', '2023-02-08', 360.00, 'confirmed', '2022-12-20 09:15:00'),
('44444444-4444-4444-4444-444444444444', 'eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee', '66666666-6666-6666-6666-666666666666', '2023-12-20', '2023-12-27', 1925.00, 'pending', '2023-06-01 16:30:00'),

-- Robert's bookings
('55555555-5555-5555-5555-555555555555', 'dddddddd-dddd-dddd-dddd-dddddddddddd', '77777777-7777-7777-7777-777777777777', '2023-04-15', '2023-04-18', 285.00, 'confirmed', '2023-02-10 11:20:00'),
('66666666-6666-6666-6666-666666666666', 'ffffffff-ffff-ffff-ffff-ffffffffffff', '77777777-7777-7777-7777-777777777777', '2023-07-01', '2023-07-07', 1170.00, 'canceled', '2023-03-15 13:10:00'),

-- Olivia's bookings
('77777777-7777-7777-7777-777777777777', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '88888888-8888-8888-8888-888888888888', '2023-05-20', '2023-05-25', 875.00, 'confirmed', '2023-03-20 10:45:00'),
('88888888-8888-8888-8888-888888888888', 'cccccccc-cccc-cccc-cccc-cccccccccccc', '88888888-8888-8888-8888-888888888888', '2023-09-01', '2023-09-10', 3150.00, 'pending', '2023-05-01 15:30:00');

-- Inserting sample payments
INSERT INTO "Payment" (payment_id, booking_id, amount, payment_date, payment_method) VALUES
-- Payments for David's bookings
('11111111-1111-1111-1111-111111111111', '11111111-1111-1111-1111-111111111111', 875.00, '2022-12-01 10:35:00', 'credit_card'),
('22222222-2222-2222-2222-222222222222', '22222222-2222-2222-2222-222222222222', 2450.00, '2022-12-15 14:50:00', 'paypal'),

-- Payments for Jessica's bookings
('33333333-3333-3333-3333-333333333333', '33333333-3333-3333-3333-333333333333', 360.00, '2022-12-20 09:20:00', 'stripe'),

-- Payments for Robert's bookings
('44444444-4444-4444-4444-444444444444', '55555555-5555-5555-5555-555555555555', 285.00, '2023-02-10 11:25:00', 'credit_card'),
('55555555-5555-5555-5555-555555555555', '66666666-6666-6666-6666-666666666666', 500.00, '2023-03-15 13:15:00', 'paypal'), -- Partial payment before cancellation

-- Payment for Olivia's booking
('66666666-6666-6666-6666-666666666666', '77777777-7777-7777-7777-777777777777', 875.00, '2023-03-20 10:50:00', 'stripe');

-- Inserting sample reviews
INSERT INTO "Review" (review_id, property_id, user_id, rating, comment, created_at) VALUES
-- Reviews for Sarah's properties
('11111111-1111-1111-1111-111111111111', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '55555555-5555-5555-5555-555555555555', 5, 'The cabin was absolutely perfect! Beautiful views and very cozy.', '2023-01-21 09:30:00'),
('22222222-2222-2222-2222-222222222222', 'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '66666666-6666-6666-6666-666666666666', 4, 'Great location and comfortable space. Would stay again!', '2023-02-09 10:15:00'),

-- Reviews for Michael's properties
('33333333-3333-3333-3333-333333333333', 'cccccccc-cccc-cccc-cccc-cccccccccccc', '55555555-5555-5555-5555-555555555555', 5, 'Paradise! The beach was amazing and the villa had everything we needed.', '2023-03-18 14:00:00'),
('44444444-4444-4444-4444-444444444444', 'dddddddd-dddd-dddd-dddd-dddddddddddd', '77777777-7777-7777-7777-777777777777', 3, 'Nice cottage but the wifi was spotty. Gardens were beautiful though.', '2023-04-19 11:45:00'),

-- Reviews for Emily's properties
('55555555-5555-5555-5555-555555555555', 'eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee', '66666666-6666-6666-6666-666666666666', 4, 'Perfect ski vacation! The condo was right on the slopes.', '2023-01-05 16:30:00'),
('66666666-6666-6666-6666-666666666666', 'ffffffff-ffff-ffff-ffff-ffffffffffff', '88888888-8888-8888-8888-888888888888', 5, 'Absolutely stunning lake views. We loved every minute!', '2023-05-26 10:20:00');

-- Inserting sample messages
INSERT INTO "Message" (message_id, sender_id, recipient_id, message_body, sent_at) VALUES
-- Messages between guests and hosts about properties
('11111111-1111-1111-1111-111111111111', '55555555-5555-5555-5555-555555555555', '22222222-2222-2222-2222-222222222222', 'Hi Sarah, is the cabin pet friendly?', '2022-11-30 14:20:00'),
('22222222-2222-2222-2222-222222222222', '22222222-2222-2222-2222-222222222222', '55555555-5555-5555-5555-555555555555', 'Hi David! Yes, we allow pets with a small additional fee.', '2022-11-30 15:05:00'),

('33333333-3333-3333-3333-333333333333', '66666666-6666-6666-6666-666666666666', '33333333-3333-3333-3333-333333333333', 'Hello Michael, is there a minimum stay requirement at the beach villa?', '2022-12-10 09:45:00'),
('44444444-4444-4444-4444-444444444444', '33333333-3333-3333-3333-333333333333', '66666666-6666-6666-6666-666666666666', 'Hi Jessica, yes we have a 3-night minimum during peak season.', '2022-12-10 10:30:00'),

('55555555-5555-5555-5555-555555555555', '88888888-8888-8888-8888-888888888888', '44444444-4444-4444-4444-444444444444', 'Emily, does the lake house have a kayak we can use?', '2023-04-15 16:20:00'),
('66666666-6666-6666-6666-666666666666', '44444444-4444-4444-4444-444444444444', '88888888-8888-8888-8888-888888888888', 'Yes Olivia! We have two kayaks and life jackets available for guests.', '2023-04-15 17:05:00'),

-- Message between guests
('77777777-7777-7777-7777-777777777777', '55555555-5555-5555-5555-555555555555', '66666666-6666-6666-6666-666666666666', 'Jessica, how was your stay at Sarah''s downtown loft?', '2023-02-10 12:15:00'),
('88888888-8888-8888-8888-888888888888', '66666666-6666-6666-6666-666666666666', '55555555-5555-5555-5555-555555555555', 'It was great David! Perfect location and very clean. You should book it!', '2023-02-10 13:30:00');