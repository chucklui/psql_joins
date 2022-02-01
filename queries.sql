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

