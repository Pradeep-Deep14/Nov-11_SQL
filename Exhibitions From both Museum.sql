CREATE TABLE local_exhibitions (
         exhibition_id INT, 
         gallery_id INT, 
         gallery_name VARCHAR(100)
     );
     CREATE TABLE international_exhibitions (
         exhibition_id INT, 
         gallery_id INT, 
         gallery_name VARCHAR(100)
     );
     INSERT INTO local_exhibitions VALUES 
         (1, 1, 'Kiran Nadar Museum of Art'), 
         (2, 2, 'National Gallery of Modern Art'), 
         (3, 3, 'Delhi Art Gallery');
     INSERT INTO international_exhibitions VALUES 
         (1, 1, 'Kiran Nadar Museum of Art'), 
         (2, 4, 'Tate Modern'), 
         (3, 2, 'National Gallery of Modern Art');

SELECT * FROM LOCAL_EXHIBITIONS

SELECT * FROM INTERNATIONAL_EXHIBITIONS

/*
Identify all art galleries that have exhibited works from both local and international artists
.*/

SELECT L.GALLERY_NAME
FROM LOCAL_EXHIBITIONS L
JOIN INTERNATIONAL_EXHIBITIONS I
ON L.EXHIBITION_ID = I.EXHIBITION_ID
AND L.GALLERY_ID = I.GALLERY_ID