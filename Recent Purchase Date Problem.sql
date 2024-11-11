CREATE TABLE purchases (
         purchase_id INT PRIMARY KEY, 
         customer_id INT, 
         purchase_date DATE
     );
     INSERT INTO purchases VALUES 
         (1, 1, '2024-10-10'), 
         (2, 1, '2024-09-05'), 
         (3, 2, '2024-10-15');


SELECT * FROM PURCHASES


SELECT  CUSTOMER_ID,
		MAX(PURCHASE_DATE)   
FROM PURCHASES
GROUP BY 1
ORDER BY 1
