SELECT Title,Rating
FROM IMDB i
JOIN genre ge
    ON ge.Movie_id = I.Movie_id
WHERE ge.genre LIKE 'C%' 
        AND i.Budget > 40000000
        AND i.Title LIKE '%2014%';
