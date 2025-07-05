## Optimization report

The refactored query ensures optimal perfomance through:
 - Querying from tables with indexes created columns used in WHERE, JOIN, ORDER BY, and GROUP BY clauses (foreign and primary keys).

 - Select only the necessary columns (avoiding SELECT *).

 - Joining only the necessary tables.

 - Avoiding functions on indexed columns.

These measures reduced query execution time
