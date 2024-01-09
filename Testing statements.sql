-- Select statements
SELECT * FROM PRINT_JOB;
SELECT * FROM PRINT_JOB WHERE CUSTOMER_ID = 3;

-- Delete statements
DROP TABLE PRINT_JOB;
DELETE FROM PRINT_JOB;
DELETE FROM PRINT_JOB WHERE CUSTOMER_ID = 1;

-- Drop all tables
SELECT CONCAT('DROP TABLE IF EXISTS ', table_name, ';')
FROM information_schema.tables
WHERE table_schema = 'your_database_name';