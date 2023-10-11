SELECT first_name, last_name
FROM players
WHERE id IN (
    SELECT performances.player_id
    FROM performances
    JOIN salaries ON performances.player_id == salaries.player_id
    WHERE performances.year == 2001 AND salaries.year == 2001 AND performances.RBI <> 0
    ORDER BY salaries.salary / performances.RBI ASC
    LIMIT 10
)
AND id IN (
    SELECT performances.player_id
    FROM performances
    JOIN salaries ON performances.player_id == salaries.player_id
    WHERE performances.year == 2001 AND salaries.year == 2001 AND performances.H <> 0
    ORDER BY salaries.salary / performances.H ASC
    LIMIT 10
);



