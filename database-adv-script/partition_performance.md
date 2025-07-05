## Partitioning Large Tables
The *partitioning.sql* scropt in this directory contains sql scripts that create a partition in the **Booking** table based on the *start_date* column, and an analysis query that tests perfomance after partitioning.

There is a noteble improvement in query execution speed because the database automatically excludes unrelated partitions from query execution, and queries filtering on the partition key only scan relevant partitions.