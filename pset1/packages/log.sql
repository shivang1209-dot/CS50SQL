
-- *** The Lost Letter ***
SELECT * FROM addresses WHERE id ==
(SELECT address_id FROM scans WHERE action == "Drop" AND package_id ==
(SELECT id FROM packages WHERE contents == "Congratulatory letter" AND from_address_id ==
(SELECT id FROM addresses WHERE address == "900 Somerville Avenue")));

-- *** The Devious Delivery ***
SELECT * FROM addresses WHERE id ==
(SELECT address_id FROM scans WHERE action == "Drop" AND package_id ==
(SELECT id FROM packages WHERE contents LIKE "%duck%" AND from_address_id IS NULL));

-- *** The Forgotten Gift ***

SELECT * FROM scans WHERE package_id ==
(SELECT id FROM packages WHERE from_address_id ==
(SELECT id FROM addresses WHERE address == "109 Tileston Street")
AND to_address_id ==
(SELECT id FROM addresses WHERE address == "728 Maple Place"));
-- from : 9873
-- to : 4983
-- id : 12432
SELECT * FROM drivers WHERE id ==
(SELECT driver_id FROM scans WHERE id == 12432);