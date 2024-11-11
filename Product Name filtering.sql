CREATE TABLE products (
         product_id INT PRIMARY KEY, 
         product_name VARCHAR(100)
     );
     INSERT INTO products VALUES 
         (1, 'Smartphone'), 
         (2, 'Laptop'), 
         (3, 'Feature Phone');

SELECT * FROM PRODUCTS

/*
List all products with names containing "Phone".
*/


SELECT PRODUCT_NAME
FROM PRODUCTS
WHERE PRODUCT_NAME ILIKE '%phone%'