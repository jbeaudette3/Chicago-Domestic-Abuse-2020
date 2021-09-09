%%bigquery --project [name] df
SELECT
  EXTRACT (YEAR FROM date) AS Year,
  EXTRACT (MONTH FROM date) AS Month,
  COUNTIF(arrest) AS Arrested,
  COUNTIF(arrest=False) AS NotArrested
FROM `bigquery-public-data.chicago_crime.crime`
WHERE
  EXTRACT (YEAR FROM date) >= 2011
  AND Domestic = True
GROUP BY Year, Month
ORDER BY Year DESC, Month DESC;
