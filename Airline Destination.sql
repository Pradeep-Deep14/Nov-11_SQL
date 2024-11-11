CREATE TABLE airlines (
         airline_id INT, 
         airline_name VARCHAR(100), 
         destination VARCHAR(100)
     );
     INSERT INTO airlines VALUES 
         (1, 'IndiGo', 'Delhi'), 
         (2, 'Air India', 'Mumbai'), 
         (3, 'SpiceJet', 'Kolkata'), 
         (4, 'GoAir', 'Chennai'), 
         (5, 'Vistara', 'Bengaluru');

SELECT * FROM AIRLINES

/*
Find all the airlines and their destinations
*/

SELECT AIRLINE_NAME,
       DESTINATION
FROM AIRLINES