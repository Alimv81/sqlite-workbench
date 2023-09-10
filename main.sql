CREATE TABLE IF NOT EXISTS table2 (
    id INTEGER PRIMARY KEY,
    address TEXT,
    phone TEXT
);

CREATE TABLE IF NOT EXISTS table1 (
    id INTEGER PRIMARY KEY,
    name TEXT,
    age INTEGER,
    table2_id Integer,
    FOREIGN KEY (table2_id) REFERENCES table2(id)
);

-- ALTER TABLE table1 ADD COLUMN table2_id INTEGER;
-- ALTER TABLE table1 ADD FOREIGN KEY (table2_id) REFERENCES table2(id);

INSERT INTO table1 (name, age, table2_id) VALUES ('John', 25, 1);
INSERT INTO table1 (name, age, table2_id) VALUES ('Jane', 30, 2);

INSERT INTO table2 (address, phone) VALUES ('123 Main St', '555-1234');
INSERT INTO table2 (address, phone) VALUES ('456 Elm St', '555-5678');

-- Viewing tables
SELECT * FROM table1;
SELECT * FROM table2;

-- Grouping
SELECT name, COUNT(*) FROM table1 GROUP BY name;

-- Deleting
DELETE FROM table1 WHERE age > 40;
DELETE FROM table2 WHERE address = '123 Main St';

SELECT * FROM table1 WHERE age < 30;
SELECT * FROM table2 WHERE phone LIKE '%555%';

-- Updating
UPDATE table1 SET age = 35 WHERE name = 'John';
UPDATE table2 SET address = '789 Oak St' WHERE id = 2;

-- Joining
SELECT table1.name, table2.address FROM table1
JOIN table2 ON table1.table2_id = table2.id;

-- Aggregating
SELECT AVG(age) FROM table1;
SELECT MAX(age) FROM table1;

-- Inserting
INSERT INTO table1 (name, age, table2_id) VALUES ('Mike', 40, 1);
INSERT INTO table1 (name, age, table2_id) VALUES ('Sarah', 35, 2);

-- Deleting
DELETE FROM table1 WHERE name = 'Mike';
DELETE FROM table2 WHERE phone = '555-5678';

-- Counting
SELECT COUNT(*) FROM table1;
SELECT COUNT(DISTINCT name) FROM table1;

-- Sorting
SELECT * FROM table1 ORDER BY age DESC;
SELECT * FROM table2 ORDER BY address ASC;

--  Limiting
SELECT * FROM table1 LIMIT 5;
SELECT * FROM table2 LIMIT 3;


UPDATE table1 SET age = (SELECT MAX(age) FROM table1) WHERE name = 'Sarah';
UPDATE table2 SET address = (SELECT address FROM table2 WHERE id = 1) WHERE id = 2;


DROP TABLE IF EXISTS table1;
DROP TABLE IF EXISTS table2;

SELECT MIN(age) FROM table1;
SELECT SUM(age) FROM table1;
SELECT AVG(age) FROM table1 WHERE age > 30;
SELECT COUNT(*) FROM table2 WHERE address LIKE '%St%';
SELECT * FROM table1 WHERE name IN ('John', 'Jane');
SELECT * FROM table2 WHERE phone NOT LIKE '%555%';
SELECT * FROM table1 WHERE age BETWEEN 20 AND 30;
SELECT * FROM table2 WHERE address IS NULL;
SELECT * FROM table1 WHERE name LIKE 'J%';
SELECT * FROM table2 WHERE phone LIKE '555%';
SELECT * FROM table1 WHERE age > (SELECT AVG(age) FROM table1);
SELECT * FROM table2 WHERE address = (SELECT address FROM table2 WHERE id = 1);
SELECT * FROM table1 WHERE age = (SELECT MAX(age) FROM table1);
SELECT * FROM table2 WHERE phone = (SELECT phone FROM table2 WHERE id = 1);
SELECT * FROM table1 WHERE age IN (SELECT age FROM table1 WHERE name = 'John');
SELECT * FROM table2 WHERE address IN (SELECT address FROM table2 WHERE phone = '555-1234');
SELECT * FROM table1 WHERE age NOT IN (SELECT age FROM table1 WHERE name = 'John');
SELECT * FROM table2 WHERE address NOT IN (SELECT address FROM table2 WHERE phone = '555-1234');
SELECT * FROM table1 WHERE EXISTS (SELECT * FROM table2 WHERE table1.table2_id = table2.id);
SELECT * FROM table2 WHERE EXISTS (SELECT * FROM table1 WHERE table1.table2_id = table2.id);

SELECT * FROM table1 WHERE age > 40;
SELECT * FROM table2 WHERE address = '123 Main St';

SELECT * FROM table1 WHERE age < 30;
SELECT * FROM table2 WHERE phone LIKE '%555%';

UPDATE table1 SET age = 35 WHERE name = 'John';
UPDATE table2 SET address = '789 Oak St' WHERE id = 2;

SELECT table1.name, table2.address FROM table1
JOIN table2 ON table1.table2_id = table2.id;

SELECT AVG(age) FROM table1;
SELECT MAX(age) FROM table1;

INSERT INTO table1 (name, age, table2_id) VALUES ('Mike', 40, 1);
INSERT INTO table1 (name, age, table2_id) VALUES ('Sarah', 35, 2);

DELETE FROM table1 WHERE name = 'Mike';
DELETE FROM table2 WHERE phone = '555-5678';

SELECT COUNT(*) FROM table1;
SELECT COUNT(DISTINCT name) FROM table1;

SELECT * FROM table1 ORDER BY age DESC;
SELECT * FROM table2 ORDER BY address ASC;

SELECT * FROM table1 LIMIT 5;
SELECT * FROM table2 LIMIT 3;

UPDATE table1 SET age = (SELECT MAX(age) FROM table1) WHERE name = 'Sarah';
UPDATE table2 SET address = (SELECT address FROM table2 WHERE id = 1) WHERE id = 2;

DROP TABLE IF EXISTS table1;
DROP TABLE IF EXISTS table2;

SELECT MIN(age) FROM table1;
SELECT SUM(age) FROM table1;
SELECT AVG(age) FROM table1 WHERE age > 30;
SELECT COUNT(*) FROM table2 WHERE address LIKE '%St%';
SELECT * FROM table1 WHERE name IN ('John', 'Jane');
SELECT * FROM table2 WHERE phone NOT LIKE '%555%';
SELECT * FROM table1 WHERE age BETWEEN 20 AND 30;
SELECT * FROM table2 WHERE address IS NULL;
SELECT * FROM table1 WHERE name LIKE 'J%';
SELECT * FROM table2 WHERE phone LIKE '555%';
SELECT * FROM table1 WHERE age > (SELECT AVG(age) FROM table1);
SELECT * FROM table2 WHERE address = (SELECT address FROM table2 WHERE id = 1);
SELECT * FROM table1 WHERE age = (SELECT MAX(age) FROM table1);
SELECT * FROM table2 WHERE phone = (SELECT phone FROM table2 WHERE id = 1);
SELECT * FROM table1 WHERE age IN (SELECT age FROM table1 WHERE name = 'John');
SELECT * FROM table2 WHERE address IN (SELECT address FROM table2 WHERE phone = '555-1234');
SELECT * FROM table1 WHERE age NOT IN (SELECT age FROM table1 WHERE name = 'John');
SELECT * FROM table2 WHERE address NOT IN (SELECT address FROM table2 WHERE phone = '555-1234');
SELECT * FROM table1 WHERE EXISTS (SELECT * FROM table2 WHERE table1.table2_id = table2.id);
SELECT * FROM table2 WHERE EXISTS (SELECT * FROM table1 WHERE table1.table2_id = table2.id);


SELECT * FROM table1 WHERE age > 40;
SELECT * FROM table2 WHERE address = '123 Main St';

SELECT * FROM table1 WHERE age < 30;
SELECT * FROM table2 WHERE phone LIKE '%555%';

UPDATE table1 SET age = 35 WHERE name = 'John';
UPDATE table2 SET address = '789 Oak St' WHERE id = 2;

SELECT table1.name, table2.address FROM table1
JOIN table2 ON table1.table2_id = table2.id;

SELECT AVG(age) FROM table1;
SELECT MAX(age) FROM table1;

INSERT INTO table1 (name, age, table2_id) VALUES ('Mike', 40, 1);
INSERT INTO table1 (name, age, table2_id) VALUES ('Sarah', 35, 2);

DELETE FROM table1 WHERE name = 'Mike';
DELETE FROM table2 WHERE phone = '555-5678';

SELECT COUNT(*) FROM table1;
SELECT COUNT(DISTINCT name) FROM table1;

SELECT * FROM table1 ORDER BY age DESC;
SELECT * FROM table2 ORDER BY address ASC;

SELECT * FROM table1 LIMIT 5;
SELECT * FROM table2 LIMIT 3;

UPDATE table1 SET age = (SELECT MAX(age) FROM table1) WHERE name = 'Sarah';
UPDATE table2 SET address = (SELECT address FROM table2 WHERE id = 1) WHERE id = 2;

DROP TABLE IF EXISTS table1;
DROP TABLE IF EXISTS table2;

SELECT MIN(age) FROM table1;
SELECT SUM(age) FROM table1;
SELECT AVG(age) FROM table1 WHERE age > 30;
SELECT COUNT(*) FROM table2 WHERE address LIKE '%St%';
SELECT * FROM table1 WHERE name IN ('John', 'Jane');
SELECT * FROM table2 WHERE phone NOT LIKE '%555%';
SELECT * FROM table1 WHERE age BETWEEN 20 AND 30;
SELECT * FROM table2 WHERE address IS NULL;
SELECT * FROM table1 WHERE name LIKE 'J%';
SELECT * FROM table2 WHERE phone LIKE '555%';
SELECT * FROM table1 WHERE age > (SELECT AVG(age) FROM table1);
SELECT * FROM table2 WHERE address = (SELECT address FROM table2 WHERE id = 1);
SELECT * FROM table1 WHERE age = (SELECT MAX(age) FROM table1);
SELECT * FROM table2 WHERE phone = (SELECT phone FROM table2 WHERE id = 1);
SELECT * FROM table1 WHERE age IN (SELECT age FROM table1 WHERE name = 'John');
SELECT * FROM table2 WHERE address IN (SELECT address FROM table2 WHERE phone = '555-1234');
SELECT * FROM table1 WHERE age NOT IN (SELECT age FROM table1 WHERE name = 'John');
SELECT * FROM table2 WHERE address NOT IN (SELECT address FROM table2 WHERE phone = '555-1234');
SELECT * FROM table1 WHERE EXISTS (SELECT * FROM table2 WHERE table1.table2_id = table2.id);
SELECT * FROM table2 WHERE EXISTS (SELECT * FROM table1 WHERE table1.table2_id = table2.id);

SELECT * FROM table1 WHERE age > 40;
SELECT * FROM table2 WHERE address = '123 Main St';

SELECT * FROM table1 WHERE age < 30;
SELECT * FROM table2 WHERE phone LIKE '%555%';

UPDATE table1 SET age = 35 WHERE name = 'John';
UPDATE table2 SET address = '789 Oak St' WHERE id = 2;

SELECT table1.name, table2.address FROM table1
JOIN table2 ON table1.table2_id = table2.id;

SELECT AVG(age) FROM table1;
SELECT MAX(age) FROM table1;

INSERT INTO table1 (name, age, table2_id) VALUES ('Mike', 40, 1);
INSERT INTO table1 (name, age, table2_id) VALUES ('Sarah', 35, 2);

DELETE FROM table1 WHERE name = 'Mike';
DELETE FROM table2 WHERE phone = '555-5678';

SELECT COUNT(*) FROM table1;
SELECT COUNT(DISTINCT name) FROM table1;

SELECT * FROM table1 ORDER BY age DESC;
SELECT * FROM table2 ORDER BY address ASC;

SELECT * FROM table1 LIMIT 5;
SELECT * FROM table2 LIMIT 3;

UPDATE table1 SET age = (SELECT MAX(age) FROM table1) WHERE name = 'Sarah';
UPDATE table2 SET address = (SELECT address FROM table2 WHERE id = 1) WHERE id = 2;

DROP TABLE IF EXISTS table1;
DROP TABLE IF EXISTS table2;

SELECT MIN(age) FROM table1;
SELECT SUM(age) FROM table1;
SELECT AVG(age) FROM table1 WHERE age > 30;
SELECT COUNT(*) FROM table2 WHERE address LIKE '%St%';
SELECT * FROM table1 WHERE name IN ('John', 'Jane');
SELECT * FROM table2 WHERE phone NOT LIKE '%555%';
SELECT * FROM table1 WHERE age BETWEEN 20 AND 30;
SELECT * FROM table2 WHERE address IS NULL;
SELECT * FROM table1 WHERE name LIKE 'J%';
SELECT * FROM table2 WHERE phone LIKE '555%';
SELECT * FROM table1 WHERE age > (SELECT AVG(age) FROM table1);
SELECT * FROM table2 WHERE address = (SELECT address FROM table2 WHERE id = 1);
SELECT * FROM table1 WHERE age = (SELECT MAX(age) FROM table1);
SELECT * FROM table2 WHERE phone = (SELECT phone FROM table2 WHERE id = 1);
SELECT * FROM table1 WHERE age IN (SELECT age FROM table1 WHERE name = 'John');
SELECT * FROM table2 WHERE address IN (SELECT address FROM table2 WHERE phone = '555-1234');
SELECT * FROM table1 WHERE age NOT IN (SELECT age FROM table1 WHERE name = 'John');

