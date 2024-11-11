CREATE TABLE products (
         product_id INT PRIMARY KEY, 
         product_name VARCHAR(100), 
         category VARCHAR(50)
     );
     INSERT INTO products VALUES 
         (1, 'Smartphone', 'Electronics'), 
         (2, 'Laptop', 'Electronics'), 
         (3, 'Washing Machine', 'Appliances'), 
         (4, 'Mixer', 'Appliances');

SELECT * FROM PRODUCTS

/*
Count the number of products available in each category.
*/


SELECT CATEGORY,
       COUNT(*) AS NO_OF_PRODUCTS
FROM PRODUCTS
GROUP BY 1