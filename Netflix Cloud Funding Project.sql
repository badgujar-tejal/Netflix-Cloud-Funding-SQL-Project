CREATE DATABASE netflix_cloud_funding;

USE netflix_cloud_funding;

-- TABLE CREATION
SELECT * 
FROM netflix_titles LIMIT 10;

SELECT COUNT(show_id) 
FROM netflix_titles;

SELECT * 
FROM netflix_titles;

-- KPI QUERIES

SELECT 
(SELECT COUNT(*) 
FROM netflix_titles 
WHERE type = "Movie") AS Total_Movies,

(SELECT COUNT(*) 
FROM netflix_titles 
WHERE type = "TV Show") AS Total_TV_Shows,

(SELECT director 
FROM netflix_titles 
WHERE director IS NOT NULL AND director <> '' 
GROUP BY director 
ORDER BY COUNT(*) DESC LIMIT 1) AS Most_Frequent_Director,

(SELECT listed_in 
FROM netflix_titles 
GROUP BY listed_in 
ORDER BY COUNT(*) DESC LIMIT 1) AS Top_Genre,

(SELECT MAX(release_year) 
FROM netflix_titles) AS Latest_Release_Year;

-- TITLES BY RELEASE YEAR

SELECT release_year, COUNT(*) AS Total_Titles 
FROM netflix_titles 
WHERE release_year IS NOT NULL 
GROUP BY release_year 
ORDER BY release_year;

-- MOVIES VS SHOWS

SELECT type, COUNT(*) AS Total_Titles 
FROM netflix_titles 
GROUP BY type;

-- TOP % COUNTRIES

SELECT country, COUNT(*) AS Total_Titles 
FROM netflix_titles 
WHERE country IS NOT NULL AND country <> '' 
GROUP BY country 
ORDER BY Total_Titles DESC LIMIT 5;

-- TITLES BY RATINGS

SELECT rating, COUNT(*) AS Total_Titles 
FROM netflix_titles 
WHERE rating IS NOT NULL 
GROUP BY rating 
ORDER BY Total_Titles DESC;

-- TOP GENRE

SELECT listed_in AS Genre, COUNT(*) AS Total_Titles 
FROM netflix_titles 
GROUP BY listed_in 
ORDER BY Total_Titles DESC LIMIT 10;

-- GENRE TREND BY YEAR

SELECT release_year, listed_in AS Genre, COUNT(*) AS Total_Titles 
FROM netflix_titles 
WHERE release_year IS NOT NULL 
GROUP BY release_year, genre 
ORDER BY release_year,total_titles DESC;

-- COUNTRY VS YEAR DISTRIBUTION

SELECT country, release_year, COUNT(*) AS Total_Titles 
FROM netflix_titles 
WHERE country IS NOT NULL AND country <> '' 
GROUP BY country, release_year 
ORDER BY country, release_year;