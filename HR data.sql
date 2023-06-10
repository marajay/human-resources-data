/*write a SQL query to find those employees who receive a higher 
salary than the employee with ID 163. Return first name, last name*/ 

SELECT first_name, last_name 
FROM employees 
WHERE salary > 
         ( SELECT salary  
           FROM employees 
           WHERE employee_id=163)
           
/*  write a SQL query to find out which employees have the same designation 
   as the employee whose ID is 169. Return first name, last name, department ID and job ID */ 
   
   SELECT first_name, last_name, salary, department_id, job_id 
FROM employees 
WHERE job_id =  
             ( SELECT job_id  
               FROM employees  
               WHERE employee_id=169);
               
/*write a SQL query to find those employees whose salary matches the lowest salary 
of any of the departments. Return first name, last name and department ID*/

SELECT first_name, last_name, salary, department_id  
FROM employees  
WHERE salary IN  
         ( SELECT MIN(salary)  
           FROM employees  
           GROUP BY department_id);
           
/*write a SQL query to find those employees who earn more than the average salary. 
Return employee ID, first name, last name */

SELECT employee_id, first_name,last_name  
FROM employees  
WHERE salary >  
      (SELECT AVG(salary)  
        FROM employees);
        
/*write a SQL query to find those employees who report to that manager whose first name 
is ‘Payam’. Return first name, last name, employee ID and salary*/

SELECT first_name, last_name, employee_id, salary  
FROM employees  
WHERE manager_id = 
      (SELECT employee_id  
       FROM employees  
       WHERE first_name = 'Payam');