<!--
 * Title:          <code> saveScript.jsp   </code> <BR> 
 * Description:    Handler to set content 
 * 
 * <BR> 
 * Date:           23 JAN 2002               <BR> 
 * <p> 
 * Company:        Oracle <BR> 
 * Copyright:      Copyright (c) 2002, 2003 
 *                 All rights reserved. 
 * 
 * @author  Marcus Pecher 
 * @version 1.0 
 * 
 * MODIFIED   (MM/DD/YY)
 *   asamuel   12/05/03 - softcoding save mime type
 *   agoggin   10/10/03 - Add support for 'hiding' input (bug 2905440)

-->

SET SERVEROUTPUT ON
SET VERIFY OFF
ACCEPT emp_id PROMPT 'Please enter your employee number';
ACCEPT emp_deptid PROMPT 'Please enter the department number for which 

salary revision is being done';

DECLARE
    emp_authorization NUMBER(5);
    emp_id NUMBER(5):=&emp_id;
    emp_deptid NUMBER(6):=&emp_deptid;
    no_such_employee EXCEPTION;

-- INCLUDE EXECUTABLE SECTION OF OUTER BLOCK HERE

BEGIN
     SELECT employee_id INTO emp_authorization FROM employee_details WHERE department_id=(SELECT department_id FROM departments WHERE department_name='Human Resources');

-- RAISE EXCEPTION HERE

-- INCLUDE SIMPLE IF STATEMENT HERE
    IF (emp_id=emp_authorization) THEN

     DECLARE
          emp_sal employee_details.salary%TYPE;
          emp_fname  employee_details.first_name%TYPE;
          emp_lname  employee_details.last_name%TYPE;
          i NUMBER:=1;

-- DECLARE AN INDEX BY TABLE OF TYPE VARCHAR2(50). CALL 
-- IT ename_table_type 

     TYPE ename_table_type IS TABLE OF VARCHAR2(50) INDEX BY PLS_INTEGER;

-- DECLARE A VARIABLE ename_table OF TYPE ename_table_type
     ename_table ename_table_type;

          c_hike1 constant real :=.20;
          c_hike2 constant real :=.15;
          c_hike3 constant real :=.08;
          c_hike4 constant real :=.03;

          c_range1 constant number :=6500;
          c_range2 constant number :=9500;
          c_range3 constant number :=12000;

-- DECLARE A CURSOR CALLED emp_records TO HOLD salary, 
-- first_name, and last_name of employees

-- INCLUDE EXECUTABLE SECTION OF INNER BLOCK HERE

-- CLOSE THE INNER BLOCK

ELSE
     DBMS_OUTPUT.PUT_LINE ('SORRY YOU ARE NOT AUTHORIZED TO USE THIS 

APPLICATION');
END IF;

-- INCLUDE EXCEPTION SECTION FOR OUTER BLOCK

-- CLOSE THE OUTER BLOCK





