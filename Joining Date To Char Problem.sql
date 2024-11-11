CREATE TABLE employees (
         employee_id INT PRIMARY KEY, 
         employee_name VARCHAR(100), 
         joining_date DATE
     );
     INSERT INTO employees VALUES 
         (1, 'Vikash Soni', '2022-05-15'), 
         (2, 'Neha Gupta', '2021-04-25'), 
         (3, 'Deepak Nair', '2022-08-30');

SELECT * FROM EMPLOYEES


/*
Get all employees who joined in the year 2022 using a date function.
*/

SELECT EMPLOYEE_NAME
FROM EMPLOYEES
WHERE TO_CHAR(JOINING_DATE, 'YYYY') = '2022';

