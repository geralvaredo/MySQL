SELECT employee_id , last_name , salary , 
round(salary * 0.155,0) + salary  As "New Salary" 
FROM employees ;


