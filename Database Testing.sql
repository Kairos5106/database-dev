-- AGNES
SELECT *FROM REPORT_SYSTEM RS 
  JOIN KIOSK Kiosk ON RS.RECORD_ID = Kiosk.RECORD_ID;

-- FIRZANAH

-- ISHWARI
-- test to check if constraints are working in admin_access_level
INSERT INTO ADMINISTRATOR(
    ADMIN_ID, ADMIN_NAME, ADMIN_ADDRESS, ADMIN_POSITION, ADMIN_ACCESS_LEVEL)
    VALUES ('624', 'Justin Lim', 'PETALING JAYA, SELANGOR', 'INTERN', 'BASIC LEVEL');
-- adding basic level which is not allowed 

-- POOI HUA
