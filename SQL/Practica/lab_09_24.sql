
SET ECHO OFF 
SET VERIFY OFF 
insert into my_employee 
values(&id,'&&last_name' ,'&&first_name',lower(substr('&first_name',1,1) || substr('&last_name',1,7)),&salary) ;
SET VERIFY ON 
SET ECHO ON 
UNDEFINE first_name;
UNDEFINE last_name ;
