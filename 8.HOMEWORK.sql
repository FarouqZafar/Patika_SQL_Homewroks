--1
Create table employee(
	id INTEGER,
	name VARCHAR(50),
	birthday DATE,
	email VARCHAR(100)
	);
  
  --2
  insert into employee (id, name, birthday, email) values (1, 'Elsie', '7/20/1998', 'elippiatt0@macromedia.com');
  insert into employee (id, name, birthday, email) values (2, 'Garnet', '9/26/1931', 'gwilman1@google.es');
  ...
  insert into employee (id, name, birthday, email) values (19, 'Aeriela', '9/16/1963', 'astollmeieri@yan');
  insert into employee (id, name, birthday, email) values (50, 'Sayre', '2/13/2007', 'sgilbeart1d@gov.uk');
  
  --3
  UPDATE employee
SET name = 'Alex'
WHERE id = 5
RETURNING *;

  UPDATE employee
SET name = 'Farouq',
	email = 'farouqhabib@gmail.com'
WHERE id = 10
RETURNING *;

  UPDATE employee
SET name = 'Shah',
	birthday = '1999-09-09'
WHERE id = 15
RETURNING *;

  UPDATE employee
SET id = 51,
	birthday = '1999-09-09'
WHERE name = 'Garnet'
RETURNING *;

UPDATE employee
SET birthday = '1999-09-09',
	name = 'Habib'
WHERE name LIKE 'A%'
RETURNING *;

--4
DELETE FROM employee
WHERE name = 'Habib'
RETURNING *;

DELETE FROM employee
WHERE ID = 51
RETURNING *;

DELETE FROM employee
WHERE id >10 AND id < 15
RETURNING *;

DELETE FROM employee
WHERE birthday ='1999-09-09'
RETURNING *;

DELETE FROM employee
WHERE name LIKE '%a'
RETURNING *;


  
