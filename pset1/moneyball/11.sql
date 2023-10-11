    SELECT players.first_name, players.last_name, salaries.salary / performances.H AS "dollars per hit"
    FROM salaries
    JOIN performances ON performances.player_id == salaries.player_id
    JOIN players ON players.id == salaries.player_id
    WHERE performances.year == 2001 AND salaries.year == 2001 AND performances.H <> 0
    ORDER BY "dollars per hit" ASC, players.first_name ASC, players.last_name ASC
    LIMIT 10;