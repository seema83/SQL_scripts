-- Garden Flower Analysis with SQL 
-- Author: Seema Patel 
--  Date: 06/22/2023 
 
-- show glimpse of flowers table. 
SELECT * FROM flowers; 

-- show glimpse of edibility table. 
SELECT * FROM edibility; 

-- Arrange the flower_name column in A-Z order (its de-fault). 
SELECT * FROM flowers ORDER BY flower_name ASC; 

-- Show and count the unique flower family (duplicates are avoided) 
SELECT DISTINCT flower_family FROM flowers; 
SELECT COUNT(DISTINCT flower_family) AS unique_families FROM flowers; 

-- Find the flowers belonging to family Asteraceae. 
SELECT * FROM flowers WHERE flower_family = 'Asteraceae'; 

-- Find the flowers of color yellow. 
SELECT * FROM flowers WHERE flower_color = 'yellow'; 

-- Find the flowers that are either yellow or orange. 
SELECT * FROM flowers WHERE flower_color = 'yellow' OR flower_color = 'orange'; 
SELECT * FROM  flowers WHERE flower_color IN ('yellow' , 'orange'); 

-- Group the flowers as per families and order as per counts 
SELECT flower_family, COUNT(flower_name) AS flower_counts 
FROM flowers GROUP BY flower_family ORDER BY flower_counts DESC; 

-- Find the flowers in each color (The use of GROUP_CONCAT) 
SELECT  flower_color AS colors, GROUP_CONCAT(flower_name) AS names 
FROM  flowers GROUP BY flower_color; 

-- Calculate the percentage distribution of flower colors. 
SELECT flower_color, COUNT(*) AS color_count, 
    ROUND((COUNT(*) * 100 / (SELECT COUNT(*) FROM flowers)), 2) AS percentage 
FROM flowers GROUP BY flower_color; 

-- Find the most common flower color 
SELECT flower_color, COUNT(*) AS color_count 
FROM flowers GROUP BY flower_color ORDER BY color_count DESC LIMIT 1; 

-- Search for flowers with a specific color 
SELECT * FROM flowers WHERE flower_color = 'magenta'; 

-- Find the flowers with the longest scientific names: 
SELECT flower_name, scientific_name 
FROM flowers ORDER BY LENGTH(scientific_name) DESC LIMIT 5; 
 

--Classify flowers based on their colors (use of case-when statement) 
SELECT flower_name, flower_color, 
CASE 
WHEN flower_color = 'pink' THEN 'Pink Flowers' 
WHEN flower_color = 'yellow' THEN 'Yellow Flowers' 
ELSE 'Other Colors' 
   END AS color_classification 
FROM flowers; 

-- Find the flowers with the longest scientific names and their respective flower families. 
WITH long_names AS ( 
  SELECT flower_name, scientific_name, flower_family, 
         ROW_NUMBER() OVER (ORDER BY LENGTH(scientific_name) DESC) AS rn 
  FROM flowers 
  ) 
SELECT flower_name, scientific_name, flower_family 
FROM long_names 
WHERE rn <= 8; 
 
-- Retrieve flowers with the longest scientific names: 
SELECT flower_name, scientific_name FROM flowers 
WHERE LENGTH(scientific_name) = (SELECT MAX(LENGTH(scientific_name))  FROM flowers); 
#'star jasmine', 'Trachelospermum jasminoides' 

-- Inner Join 
SELECT f.flower_name, f.flower_family, e.edibility 
FROM flowers AS f 
INNER JOIN edibility AS e ON f.flower_ID = e.flower_ID; 

 
-- Retrieve only the rows from the query result where the flowers are edible 
SELECT f.flower_name, f.flower_family, e.edibility 
FROM flowers AS f 
INNER JOIN edibility AS e ON f.flower_ID = e.flower_ID 
WHERE e.edibility = 'edible'; 

 