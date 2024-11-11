CREATE TABLE employees (
         employee_id INT PRIMARY KEY, 
         employee_name VARCHAR(100), 
         department VARCHAR(50), 
         salary DECIMAL(10, 2)
     );
     INSERT INTO employees VALUES 
         (1, 'Chris Martin', 'Consulting', 85000.00), 
         (2, 'Jennifer Lewis', 'Finance', 92000.00), 
         (3, 'Emily Taylor', 'Finance', 88000.00), 
         (4, 'Michael Scott', 'Consulting', 78000.00), 
         (5, 'David Lee', 'Finance', 95000.00);

SELECT * FROM EMPLOYEES


/*
Identify the top 3 employees with the highest salaries within each department at PwC.
*/

WITH CTE AS
(
SELECT EMPLOYEE_NAME,
       DENSE_RANK()OVER(PARTITION BY DEPARTMENT ORDER BY SALARY DESC)AS DRNK
FROM EMPLOYEES
)
SELECT * FROM CTE WHERE DRNK = 3
