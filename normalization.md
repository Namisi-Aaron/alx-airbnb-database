## Database Design Normalization

The design of this database adheres primarily to 3NF

1. First Normal Form (1NF) Compliance
 - All columns contain atomic values (atomic values - no repeating groups or arrays)
 - Primary Keys: Each table has a single-column UUID primary key
 - No Repeating Groups: Data is flattened into separate tables for Users, Properties, Bookings, and Messages

2. Second Normal Form (2NF) Compliance
 - No Partial Dependencies: All non-key attributes depend on the entire primary key
 - Foreign Keys: Relationships are properly established via foreign keys

    In the Booking table, total_price depends on both the property_id for nightly rate and the duration calculated from dates, but is stored as a derived value. This is a practical denormalization that doesn't violate 2NF.

3. Third Normal Form (3NF) Compliance
 - No Transitive Dependencies: Non-key columns depend only on the primary key