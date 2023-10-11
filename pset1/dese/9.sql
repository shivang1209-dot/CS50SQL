SELECT name FROM districts WHERE id ==
(SELECT district_id FROM expenditures WHERE pupils ==
(SELECT MIN(pupils) FROM expenditures));

