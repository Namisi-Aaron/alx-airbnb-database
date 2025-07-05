## Perfomance Monitoring

Measures put in place to ensure optimal perfomance and faster query execution include:
 - Creating indexes on columns used in WHERE, JOIN, ORDER BY, and GROUP BY clauses.

 - Using the WHERE clause to filter as early as possible.

 - Select only the necessary columns (avoiding SELECT *).

 - Joining only the necessary tables.

 - Ensuring foreign keys are indexed for faster joins.

 - Filtering before aggregation when possible.

 - Avoiding functions on indexed columns.

 - Partitioning large tables like the *Booking* table.
