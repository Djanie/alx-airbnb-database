## Database Normalization to 3NF

Schema Review  
The database consists of the following entities: User, Property, Booking, Payment, Review, and Message. Each entity has attributes with primary keys (PK), foreign keys (FK), and constraints as specified.
## Initial Schema    


User: user_id (PK), first_name, last_name, email (UNIQUE), password_hash, phone_number, role (ENUM), created_at  

Property: property_id (PK), host_id (FK), name, description, location, pricepernight, created_at, updated_at  

Booking: booking_id (PK), property_id (FK), user_id (FK), start_date, end_date, total_price, status (ENUM), created_at  

Payment: payment_id (PK), booking_id (FK), amount, payment_date, payment_method (ENUM)  

Review: review_id (PK), property_id (FK), user_id (FK), rating, comment, created_at  

Message: message_id (PK), sender_id (FK), recipient_id (FK), message_body, sent_at

Normalization Principles

1NF (First Normal Form): All attributes must be atomic, no repeating groups, and each table must have a primary key.
2NF (Second Normal Form): Must be in 1NF, and all non-key attributes must depend on the entire primary key (no partial dependencies).
3NF (Third Normal Form): Must be in 2NF, and no non-key attribute depends on another non-key attribute (no transitive dependencies).

Step-by-Step Normalization
Step 1: Verify 1NF

Check for atomic attributes: All attributes (e.g., first_name, email, pricepernight) are atomic (indivisible).
No repeating groups: No multi-valued attributes or repeating groups exist.
Primary keys: Each table has a unique primary key (UUID: user_id, property_id, etc.).
Conclusion: All tables are in 1NF, as attributes are atomic, there are no repeating groups, and primary keys are defined.

Step 2: Verify 2NF

Single-column primary keys: All tables (User, Property, Booking, Payment, Review, Message) use single-column primary keys (UUIDs), so partial dependencies are not possible.
Non-key attribute dependency: All non-key attributes (e.g., first_name, pricepernight, total_price) depend fully on their respective primary keys.
Conclusion: Since all tables have single-column primary keys, they are automatically in 2NF, with no partial dependencies.

Step 3: Verify 3NF

Transitive dependencies: A non-key attribute should not depend on another non-key attribute.
Analysis:
User: Attributes like first_name, last_name, email depend only on user_id. No transitive dependencies (e.g., first_name does not depend on email).
Property: Attributes like name, description, pricepernight depend on property_id. Host_id (FK) is a key attribute, not a non-key, so no issue.
Booking: Attributes like start_date, end_date, total_price depend on booking_id. Property_id and user_id are FKs (key attributes). Total_price is calculated based on pricepernight (from Property) and duration (start_date to end_date), but it’s stored as a derived attribute for performance, not a transitive dependency.
Payment: Attributes like amount, payment_date depend on payment_id. Booking_id is an FK, not a non-key attribute.
Review: Attributes like rating, comment depend on review_id. Property_id and user_id are FKs.
Message: Attributes like message_body, sent_at depend on message_id. Sender_id and recipient_id are FKs.


Potential issue: Booking.total_price could be seen as derived (pricepernight × duration). However, storing it is a denormalization choice for query performance, not a 3NF violation, as it’s not dependent on another non-key attribute in Booking.
Conclusion: No transitive dependencies exist. All non-key attributes depend only on their primary keys or foreign keys (which are part of the key structure).

Step 4: Adjustments for 3NF

No changes needed: The schema is already in 3NF:
All tables are in 1NF (atomic attributes, primary keys).
All tables are in 2NF (single-column PKs, no partial dependencies).
All tables are in 3NF (no transitive dependencies).




