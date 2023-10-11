SELECT *
FROM staff_evaluations
WHERE district_id == (
SELECT id FROM districts WHERE name == "Westfield"
);