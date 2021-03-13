-- The Movies Dataset - data analysis queries

-- Time frame analysis

SELECT MOVIES.TITLE
FROM MOVIES
WHERE TITLE like '%2005%';

SELECT *
FROM CLEANED_MOVIES
WHERE RELEASE_YEAR = '1996';

-- Searching for specific movies

SELECT *
FROM MOVIES WHERE TITLE like 'Toy Story%';

SELECT *
FROM CLEANED_MOVIES
WHERE MOVIE_NAME IN ('Toy Story', 'Lion King');

SELECT tag
FROM tags WHERE TAG like 'Leonardo DiCaprio';