-- AGNES
-- Display customer’s names that study or work in Universiti Malaya.
SELECT CUSTOMER_NAME FROM CUSTOMER
WHERE CUSTOMER_WORKPLACE= 'Universiti Malaya';

-- Display the kiosk's ID and address that are not active.
SELECT KIOSK_ID, KIOSK_ADDRESS FROM KIOSK
WHERE KIOSK_STATUS= 'Not active';


-- FIRZANAH
-- Display all transactions that have a status of 'Completed'.
SELECT * FROM TRANSACTION_HISTORY WHERE TRANSACTION_STATUS = 'Completed';

-- Display documents uploaded after the specified date.
SELECT * FROM DOCUMENT
WHERE DATE_UPLOADED > TO_DATE('2023-01-20', 'YYYY-MM-DD');


-- ISHWARI
-- display administrator who are experienced and live in Kuala Lumpur
SELECT *
FROM administrator
WHERE admin_access_level = 'EXPERIENCED'
AND admin_address LIKE '%KUALA LUMPUR';

-- display total sales in the year 2023 (only jan to oct data available)
SELECT SUM(total_sales) AS total_sales_jan_to_oct
FROM report_system
WHERE SUBSTR(record_date, -4) = '2023';


-- POOI HUA
-- Display the total transaction times of every kiosk
SELECT KIOSK_ID, COUNT(*) AS TransactionCount
FROM KIOSK_USAGE
GROUP BY KIOSK_ID;

-- Display the transaction time for each kiosk on a particular date
SELECT KIOSK_ID, COUNT(*) AS TransactionCount
FROM KIOSK_USAGE
WHERE ACCESS_DATE = TO_DATE('2023-12-24', 'YYYY-MM-DD')
GROUP BY KIOSK_ID;


-- KEVIN
-- Retrieve total amount of sales for each customer
SELECT
    C.CUSTOMER_ID,
    C.CUSTOMER_NAME,
    SUM(PJ.TOTAL_PRICE) AS TOTAL_SALES
FROM
    CUSTOMER C
LEFT JOIN
    PRINT_JOB PJ ON C.CUSTOMER_ID = PJ.CUSTOMER_ID
GROUP BY
    C.CUSTOMER_ID, C.CUSTOMER_NAME;

-- Get the average number of copies per print job for each customer
SELECT
    C.CUSTOMER_ID,
    C.CUSTOMER_NAME,
    AVG(PJ.NUMBER_OF_COPIES) AS AVERAGE_COPIES_PER_PRINT_JOB
FROM
    CUSTOMER C
LEFT JOIN
    PRINT_JOB PJ ON C.CUSTOMER_ID = PJ.CUSTOMER_ID
GROUP BY
    C.CUSTOMER_ID, C.CUSTOMER_NAME;