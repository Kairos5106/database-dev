-- AGNES

-- FIRZANAH

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
