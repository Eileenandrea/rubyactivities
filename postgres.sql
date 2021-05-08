CREATE TABLE students (
    id int NOT NULL,
    first_name varchar(255)  NOT NULL,
  	middle_name VARCHAR(255) DEFAULT 'Blank',
    last_name varchar(255)  NOT NULL,
    age varchar(255) NOT NULL,
    LOCATION varchar(255) NOT NULL
);
INSERT INTO students (id, first_name, last_name, age, LOCATION)
VALUES ('1','Juan','Cruz','18','Manila');
INSERT INTO students (id, first_name, last_name, age, LOCATION)
VALUES ('2','Anne','Wall','','Manila');
INSERT INTO students (id, first_name, last_name, age, LOCATION)
VALUES ('3','Theresa','Joseph','21','Manila');
INSERT INTO students (id, first_name, last_name, age, LOCATION)
VALUES ('4','Issac','Gray','19','Laguna');
INSERT INTO students (id, first_name, last_name, age, LOCATION)
VALUES ('5','Zack','Matthews','22','Marikina');
INSERT INTO students (id, first_name, last_name, age, LOCATION)
VALUES ('6','Finn','Lam','25','Manila');
UPDATE students
SET first_name = 'Ivan', middle_name = 'Howard', age = 25, location = 'bulacan' WHERE id = 1;
DELETE FROM students WHERE id = 6