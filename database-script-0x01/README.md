## Airbnb Database Schema  
Overview  

This repository contains the SQL schema for an Airbnb-like database, designed to manage users, properties, bookings, payments, reviews, and messages. The schema is normalized to 3NF, ensuring data integrity and minimal redundancy.

### Entities

User: Stores user details (user_id, email, role: guest/host/admin).
Property: Manages property listings (property_id, host_id, pricepernight).
Booking: Tracks bookings (booking_id, property_id, user_id, status: pending/confirmed/canceled).
Payment: Records payments (payment_id, booking_id, payment_method: credit_card/paypal/stripe).
Review: Captures property reviews (review_id, rating: 1-5).
Message: Handles user communication (message_id, sender_id, recipient_id).

### Schema Details

Primary Keys: UUIDs for all entities (e.g., user_id, property_id).
Foreign Keys: Enforce relationships (e.g., host_id in Property references User.user_id).
Constraints: UNIQUE (User.email), CHECK (Review.rating 1-5), ENUMs for role, status, payment_method.
Indexes: On primary keys, email, property_id, booking_id for performance.

Files

schema.sql: SQL script with CREATE TABLE statements, constraints, and indexes.

Usage

Run schema.sql in a SQL database (e.g., MySQL, PostgreSQL) to create the schema.
Populate with sample data for testing (see project tasks).

Notes

Designed for scalability and performance.
Denormalized Booking.total_price for query efficiency, with logic to maintain consistency.

