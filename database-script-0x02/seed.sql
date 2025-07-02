INSERT INTO airbnb_clone_0."User" (first_name, last_name, email, password_hash, phone_number, role) VALUES
('Sarah', 'Johnson', 'sarah@example.com', '$2a$10$xJwL5v5Jz6UZJZJZJZJZJu', '+1555123456', 'host'),
('Michael', 'Chen', 'michael@example.com', '$2a$10$xJwL5v5Jz6UZJZJZJZJZJu', '+1555234567', 'host'),
('Emily', 'Rodriguez', 'emily@example.com', '$2a$10$xJwL5v5Jz6UZJZJZJZJZJu', '+1555345678', 'host'),

('David', 'Wilson', 'david@example.com', '$2a$10$xJwL5v5Jz6UZJZJZJZJZJu', '+1555456789', 'guest'),
('Jessica', 'Brown', 'jessica@example.com', '$2a$10$xJwL5v5Jz6UZJZJZJZJZJu', '+1555567890', 'guest'),
('Robert', 'Taylor', 'robert@example.com', '$2a$10$xJwL5v5Jz6UZJZJZJZJZJu', '+1555678901', 'guest'),
('Olivia', 'Martinez', 'olivia@example.com', '$2a$10$xJwL5v5Jz6UZJZJZJZJZJu', '+1555789012', 'guest');

INSERT INTO airbnb_clone_0."Property" (host_id, name, description, location, pricepernight) VALUES
-- Sarah's properties
('6360d48c-4ae1-434e-bc20-219e2f778f0f', 'Cozy Mountain Cabin', 'Beautiful log cabin with mountain views and hot tub', 'Aspen, CO', 175.00),
('6360d48c-4ae1-434e-bc20-219e2f778f0f', 'Downtown Loft', 'Modern loft in the heart of the city', 'Denver, CO', 120.00),

-- Michael's properties
('d948367e-c663-4d48-948d-6c604c303ad2', 'Beachfront Villa', 'Luxury villa with private beach access', 'Miami, FL', 350.00),
('d948367e-c663-4d48-948d-6c604c303ad2', 'Garden Cottage', 'Charming cottage with beautiful gardens', 'Savannah, GA', 95.00),

-- Emily's properties
('f4bb85bc-e35d-4f3d-9fa5-7b53d4c19674', 'Ski-in/Ski-out Condo', 'Direct access to the slopes with mountain views', 'Park City, UT', 275.00),
('f4bb85bc-e35d-4f3d-9fa5-7b53d4c19674', 'Lake House Retreat', 'Peaceful lakefront property with dock', 'Lake Tahoe, CA', 195.00);

INSERT INTO airbnb_clone_0."Booking" (property_id, user_id, start_date, end_date, total_price, status) VALUES
-- David's bookings
('fc18304d-1a9c-438c-a155-6e935cda002f', 'be1dcc40-2587-4e35-afd0-b42534ef2a9b', '2023-01-15', '2023-01-20', 875.00, 'confirmed'),
('68b32f19-4d6c-4381-81ef-65e10813959f', 'be1dcc40-2587-4e35-afd0-b42534ef2a9b', '2023-03-10', '2023-03-17', 2450.00, 'confirmed'),

-- Jessica's bookings
('578444a3-c60c-45be-99fc-e8b64fc9f08e', '6170c8a4-6f1e-4f80-bd1d-8c6b1d3dd868', '2023-02-05', '2023-02-08', 360.00, 'confirmed'),
('a4a3dcfb-dbc3-4193-9de0-b65b1d0b4fdb', '6170c8a4-6f1e-4f80-bd1d-8c6b1d3dd868', '2023-12-20', '2023-12-27', 1925.00, 'pending'),

-- Robert's bookings
('28daeb6a-7fbf-4019-b48b-5dcfa9638280', 'bb6d19f9-9fd8-4fa7-9ecc-2c1196ffe466', '2023-04-15', '2023-04-18', 285.00, 'confirmed'),
('c3f6c95f-f247-40cf-ac3b-001e2c878ae8', 'bb6d19f9-9fd8-4fa7-9ecc-2c1196ffe466', '2023-07-01', '2023-07-07', 1170.00, 'canceled'),

-- Olivia's bookings
('fc18304d-1a9c-438c-a155-6e935cda002f', '869160f8-94f6-405a-b8b8-f3e88d055695', '2023-05-20', '2023-05-25', 875.00, 'confirmed'),
('68b32f19-4d6c-4381-81ef-65e10813959f', '869160f8-94f6-405a-b8b8-f3e88d055695', '2023-09-01', '2023-09-10', 3150.00, 'pending');

INSERT INTO airbnb_clone_0."Payment" (booking_id, amount, payment_method) VALUES
-- Payments for David's bookings
('c96a7664-95b8-426d-abc8-ff53d7b983a1', 875.00, 'credit_card'),
('1a78f0e1-a8fc-4263-9085-9d525f0a2fef', 2450.00, 'paypal'),

-- Payments for Jessica's bookings
('195c7068-46f4-452d-a898-bc83b8d71fbb', 360.00, 'stripe'),

-- Payments for Robert's bookings
('e5dca16e-8ae1-436a-963a-f4006fd887fd', 285.00, 'credit_card'),
('0f34a5da-f473-43dc-a18a-96752743c2a4', 500.00, 'paypal'), -- Partial payment before cancellation

-- Payment for Olivia's booking
('934811f2-15de-475d-8297-8ffac649b7b1', 875.00, 'stripe');

INSERT INTO airbnb_clone_0."Review" (property_id, user_id, rating, comment) VALUES
-- Reviews for Sarah's properties
('fc18304d-1a9c-438c-a155-6e935cda002f', 'be1dcc40-2587-4e35-afd0-b42534ef2a9b', 5, 'The cabin was absolutely perfect! Beautiful views and very cozy.'),
('578444a3-c60c-45be-99fc-e8b64fc9f08e', '6170c8a4-6f1e-4f80-bd1d-8c6b1d3dd868', 4, 'Great location and comfortable space. Would stay again!'),

-- Reviews for Michael's properties
('68b32f19-4d6c-4381-81ef-65e10813959f', 'be1dcc40-2587-4e35-afd0-b42534ef2a9b', 5, 'Paradise! The beach was amazing and the villa had everything we needed.'),
('28daeb6a-7fbf-4019-b48b-5dcfa9638280', 'bb6d19f9-9fd8-4fa7-9ecc-2c1196ffe466', 3, 'Nice cottage but the wifi was spotty. Gardens were beautiful though.'),

-- Reviews for Emily's properties
('a4a3dcfb-dbc3-4193-9de0-b65b1d0b4fdb', '6170c8a4-6f1e-4f80-bd1d-8c6b1d3dd868', 4, 'Perfect ski vacation! The condo was right on the slopes.'),
('c3f6c95f-f247-40cf-ac3b-001e2c878ae8', '869160f8-94f6-405a-b8b8-f3e88d055695', 5, 'Absolutely stunning lake views. We loved every minute!');

INSERT INTO airbnb_clone_0."Message" (sender_id, recipient_id, message_body) VALUES
-- Messages between guests and hosts about properties
('be1dcc40-2587-4e35-afd0-b42534ef2a9b', '6360d48c-4ae1-434e-bc20-219e2f778f0f', 'Hi Sarah, is the cabin pet friendly?'),
('6360d48c-4ae1-434e-bc20-219e2f778f0f', 'be1dcc40-2587-4e35-afd0-b42534ef2a9b', 'Hi David! Yes, we allow pets with a small additional fee.'),

('6170c8a4-6f1e-4f80-bd1d-8c6b1d3dd868', 'd948367e-c663-4d48-948d-6c604c303ad2', 'Hello Michael, is there a minimum stay requirement at the beach villa?'),
('d948367e-c663-4d48-948d-6c604c303ad2', '6170c8a4-6f1e-4f80-bd1d-8c6b1d3dd868', 'Hi Jessica, yes we have a 3-night minimum during peak season.'),

('869160f8-94f6-405a-b8b8-f3e88d055695', 'f4bb85bc-e35d-4f3d-9fa5-7b53d4c19674', 'Emily, does the lake house have a kayak we can use?'),
('f4bb85bc-e35d-4f3d-9fa5-7b53d4c19674', '869160f8-94f6-405a-b8b8-f3e88d055695', 'Yes Olivia! We have two kayaks and life jackets available for guests.'),

-- Message between guests
('be1dcc40-2587-4e35-afd0-b42534ef2a9b', '6170c8a4-6f1e-4f80-bd1d-8c6b1d3dd868', 'Jessica, how was your stay at Sarah''s downtown loft?'),
('6170c8a4-6f1e-4f80-bd1d-8c6b1d3dd868', 'be1dcc40-2587-4e35-afd0-b42534ef2a9b', 'It was great David! Perfect location and very clean. You should book it!');