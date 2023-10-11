SELECT SUM(performances.H) AS "total hits", teams.name
FROM performances
JOIN teams ON teams.id == performances.team_id
WHERE performances.year == 2001
GROUP BY teams.name
ORDER BY "total hits" DESC
LIMIT 5;