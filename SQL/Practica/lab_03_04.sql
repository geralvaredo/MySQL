SELECT employee_id , last_name , salary , 
round(salary * 0.155,0) + salary  As "New Salary" , round(salary * 0.155,0) as "Increase"   
FROM employees ;