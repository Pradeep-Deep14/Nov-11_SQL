DROP TABLE IF EXISTS candidates;
CREATE TABLE candidates (name VARCHAR(100), skills TEXT); 
INSERT INTO candidates (name, skills) VALUES ('Alice', 'Python,Tableau,SQL'), 
	('Bob', 'Python,Tableau,PostgreSQL'),
	('Charlie', 'R,Excel,Python'), 
	('Dave', 'Tableau,Python,PostgreSQL'),
	('Eve', 'SQL,Python,Tableau,PostgreSQL');


SELECT * FROM CANDIDATES

/*
Find candidates with skills: Python, Tableau, PostgreSQL.
*/

SELECT NAME
FROM CANDIDATES
WHERE SKILLS ILIKE '%Python%'
AND SKILLS ILIKE '%Tableau%'
AND SKILLS ILIKE '%PostgreSQ%L'