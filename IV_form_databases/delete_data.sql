DELETE FROM favorite_food
WHERE id = 5;

INSERT INTO favorite_food
(id, person_id, food)
VALUES (9, 2, 'melon');

UPDATE person
SET birthday = '2000-05-14'
WHERE id = 1;