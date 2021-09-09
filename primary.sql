%%bigquery --project [name] primary
SELECT
  COUNT(primary_type) AS Count,
  ROUND(COUNT(primary_type) / SUM(COUNT(*)) OVER () * 100,2) AS Percent,
  primary_type
FROM `bigquery-public-data.chicago_crime.crime`
WHERE
  domestic = true AND
  arrest = true AND
  EXTRACT(YEAR FROM date) = 2020
GROUP BY primary_type
ORDER BY Percent DESC
LIMIT 5;
