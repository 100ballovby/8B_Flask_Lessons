INSERT INTO person (
    f_name, l_name, gender, birthday, address, city, country)
    VALUES ( 'William', 'Whales', 'M', '1997-09-03', 'Surikova 15',
            'Minsk', 'Belarus'),
           ('John', 'Bennet', 'M', '2000-05-07', 'Kiseleva 12',
            'Minsk', 'Belarus');


SELECT * FROM person;

INSERT INTO favorite_food (person_id, food)
VALUES (1, 'cookies'), (3, 'ham'), (1, 'pizza'),
       (2, 'nachos'), (2, 'grape'), (3, 'kefir'),
       (1, 'apple'), (3, 'chips'), (2, 'potato');

SELECT * FROM favorite_food;