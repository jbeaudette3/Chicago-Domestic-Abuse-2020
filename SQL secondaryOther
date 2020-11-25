%%bigquery --project [name] secondaryOther

SELECT
  description,
  COUNT(description) AS Count
FROM `bigquery-public-data.chicago_crime.crime`
WHERE
  primary_type LIKE '%OTHER%' AND
  EXTRACT(YEAR FROM date) = 2020 AND
  domestic = true
GROUP BY description
ORDER BY Count DESC
LIMIT 5
