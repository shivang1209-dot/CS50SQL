SELECT players.first_name, players.last_name, salaries.salary, performances.HR, performances.year
FROM players
JOIN performances ON performances.player_id == players.id
JOIN salaries ON salaries.player_id == players.id
WHERE performances.year == salaries.year
ORDER BY players.id ASC, performances.year DESC, HR DESC, salaries.salary DESC;