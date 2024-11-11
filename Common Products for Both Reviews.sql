CREATE TABLE customer_reviews (
         product_id INT, 
         product_name VARCHAR(100), 
         review_score INT
     );
     CREATE TABLE expert_reviews (
         product_id INT, 
         product_name VARCHAR(100), 
         review_score INT
     );
     INSERT INTO customer_reviews VALUES 
         (1, 'OnePlus Nord', 4), 
         (2, 'iPhone 13', 5), 
         (3, 'Samsung Galaxy S21', 4);
     INSERT INTO expert_reviews VALUES 
         (1, 'OnePlus Nord', 4), 
         (2, 'Xiaomi Mi 11', 5), 
         (3, 'iPhone 13', 4);

SELECT * FROM CUSTOMER_REVIEWS
SELECT * FROM EXPERT_REVIEWS

/*
Identify all products that have been reviewed by both customers and experts.
*/

SELECT C.product_name
FROM customer_reviews C
JOIN expert_reviews E ON C.product_id = E.product_id
WHERE C.product_name = E.product_name;

