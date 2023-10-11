SELECT districts.name,expenditures.pupils
FROM districts
LEFT JOIN expenditures ON districts.id == expenditures.district_id
WHERE district_id IS NOT NULL
GROUP BY districts.name;