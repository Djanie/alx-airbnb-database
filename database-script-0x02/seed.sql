-- Insert Users (2 guests, 2 hosts, 1 admin)
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
    ('550e8400-e29b-41d4-a716-446655440001', 'John', 'Doe', 'john.doe@example.com', 'hashed_password1', '123-456-7890', 'guest', CURRENT_TIMESTAMP),
    ('550e8400-e29b-41d4-a716-446655440002', 'Jane', 'Smith', 'jane.smith@example.com', 'hashed_password2', '234-567-8901', 'guest', CURRENT_TIMESTAMP),
    ('550e8400-e29b-41d4-a716-446655440003', 'Alice', 'Johnson', 'alice.johnson@example.com', 'hashed_password3', '345-678-9012', 'host', CURRENT_TIMESTAMP),
    ('550e8400-e29b-41d4-a716-446655440004', 'Bob', 'Williams', 'bob.williams@example.com', 'hashed_password4', '456-789-0123', 'host', CURRENT_TIMESTAMP),
    ('550e8400-e29b-41d4-a716-446655440005', 'Admin', 'User', 'admin@example.com', 'hashed_password5', '567-890-1234', 'admin', CURRENT_TIMESTAMP);

-- Insert Properties (3 properties by 2 hosts)
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at) VALUES
    ('660e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440003', 'Cozy Cottage', 'A charming cottage in the countryside.', '123 Rural Rd, Countryside', 100.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('660e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440003', 'City Loft', 'Modern loft in downtown.', '456 Urban St, Downtown', 150.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('660e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440004', 'Beach House', 'Spacious house by the beach.', '789 Ocean Dr, Beachside', 200.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Insert Bookings (3 bookings by 2 guests)
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at) VALUES
    ('770e8400-e29b-41d4-a716-446655440001', '660e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440001', '2025-06-01', '2025-06-03', 200.00, 'confirmed', CURRENT_TIMESTAMP),
    ('770e8400-e29b-41d4-a716-446655440002', '660e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440002', '2025-07-10', '2025-07-12', 300.00, 'pending', CURRENT_TIMESTAMP),
    ('770e8400-e29b-41d4-a716-446655440003', '660e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440001', '2025-08-15', '2025-08-18', 600.00, 'confirmed', CURRENT_TIMESTAMP);

-- Insert Payments (3 payments for 2 bookings)
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method) VALUES
    ('880e8400-e29b-41d4-a716-446655440001', '770e8400-e29b-41d4-a716-446655440001', 200.00, CURRENT_TIMESTAMP, 'credit_card'),
    ('880e8400-e29b-41d4-a716-446655440002', '770e8400-e29b-41d4-a716-446655440003', 300.00, CURRENT_TIMESTAMP, 'paypal'),
    ('880e8400-e29b-41d4-a716-446655440003', '770e8400-e29b-41d4-a716-446655440003', 300.00, CURRENT_TIMESTAMP, 'stripe');

-- Insert Reviews (2 reviews for 2 properties)
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at) VALUES
    ('990e8400-e29b-41d4-a716-446655440001', '660e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440001', 5, 'Amazing stay, very cozy!', CURRENT_TIMESTAMP),
    ('990e8400-e29b-41d4-a716-446655440002', '660e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440001', 4, 'Great location, but a bit noisy.', CURRENT_TIMESTAMP);

-- Insert Messages (2 messages between users)
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at) VALUES
    ('aa0e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440003', 'Is the cottage available next month?', CURRENT_TIMESTAMP),
    ('aa0e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440001', 'Yes, it’s available. Let me know your dates!', CURRENT_TIMESTAMP);