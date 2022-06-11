set SERVEROUTPUT ON

declare 

v_countryid  countries.country_id%type := 'CA' ;
v_country_record countries%rowtype ;
begin
select  *
into v_country_record
from countries 
where country_id = v_countryid;

DBMS_OUTPUT.PUT_LINE('Country id: ' || v_countryid || '     '||
                     'Country Name: ' || v_country_record.country_name || '  '||
                     'Region: ' || v_country_record.region_id);

end;
