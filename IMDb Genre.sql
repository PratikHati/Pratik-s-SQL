SELECT GN.genre AS genre, MAX(ER.Domestic + ER.Worldwide - IM.Budget) AS net_profit
FROM IMDB IM,genre GN,earning ER
WHERE   GN.Movie_id = IM.Movie_id AND 
        IM.Movie_id = ER.Movie_id AND 
        IM.Title LIKE '%2012%' AND 
        genre IS NOT NULL AND
        ER.Domestic + ER.Worldwide - IM.Budget <> 0
GROUP BY genre
ORDER BY genre;

    