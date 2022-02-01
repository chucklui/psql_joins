-- write your queries here
SELECT *
FROM owners
LEFT JOIN vehicles
ON owners.id = vehicles.owner_id
ORDER BY owners.id;

SELECT owners.first_name, COUNT(vehicles.owner_id)
FROM owners
JOIN vehicles
ON owners.id = vehicles.owner_id
GROUP BY first_name
ORDER BY count;

 first_name | count
------------+-------
 Alex       |     1
 Jane       |     2
 Bob        |     2
 Melody     |     2
 Sarah      |     3
 Shana      |     4

SELECT first_name,
       ROUND(AVG(price)) AS average_price,
       COUNT(*)
  FROM owners o
         JOIN vehicles v
              ON o.id = v.owner_id
  GROUP BY first_name
  HAVING COUNT(owner_id) > 1
     AND ROUND(AVG(price)) > 10000
  ORDER BY count DESC;
 first_name | average_price | count 
------------+---------------+-------
 Shana      |         19875 |     4
 Sarah      |         16333 |     3
 Jane       |         15000 |     2