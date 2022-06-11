SET SERVEROUTPUT ON
SET VERIFY OFF
DEFINE countryid = CA
DECLARE
 country_record countries%ROWTYPE;
BEGIN
 SELECT	* 
 INTO	country_record
 FROM	countries
 WHERE	country_id = UPPER('&countryid');

 DBMS_OUTPUT.PUT_LINE ('Country Id: ' || country_record.country_id || 
  ' Country Name: ' || country_record.country_name   
  || ' Region: ' || country_record.region_id);

END;
