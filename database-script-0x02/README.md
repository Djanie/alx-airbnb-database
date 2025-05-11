## Sample Data for Airbnb Database  

### Overview  

This repository contains an SQL script to populate the Airbnb-like database with realistic sample data for testing and development.
Contents

sample_data.sql: SQL INSERT statements for User, Property, Booking, Payment, Review, and Message tables.

Sample Data Summary  


Users: 5 (2 guests, 2 hosts, 1 admin).
Properties: 3 (2 by one host, 1 by another).
Bookings: 3 (by 2 guests, various statuses).
Payments: 3 (for 2 bookings, different methods).
Reviews: 2 (for 2 properties, by 1 guest).
Messages: 2 (between a guest and a host).

Usage  


Ensure the database schema is created (run schema.sql first).
Execute sample_data.sql in your SQL database (e.g., MySQL, PostgreSQL).
Verify data insertion for testing or development.

Notes

UUIDs are used for primary keys to ensure uniqueness.
Data reflects real-world scenarios (e.g., confirmed bookings, partial payments).
Timestamps use CURRENT_TIMESTAMP for simplicity.

