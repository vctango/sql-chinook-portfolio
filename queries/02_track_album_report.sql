/*
# Track and Album Report

Purpose:
Retrieve track information together with album details.

Skills Demonstrated:
- INNER JOIN
- Table aliases
- Relational database navigation
*/

SELECT t.Name AS TrackName,
       al.Title AS AlbumTitle,
       t.Composer
FROM Track t
JOIN Album al
     ON t.AlbumID = al.AlbumID;
