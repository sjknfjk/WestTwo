CREATE DATABASE student-STATUS;
CREATE TABLE `student-status`.`student` ( `name` VARCHAR(10), `id` INT, `age` INT, `sex` VARCHAR(1) DEFAULT '男' ) ENGINE=INNODB CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
INSERT INTO student(id,NAME,age)
VALUES  (832203220,"林慕宸",19)
	(832203221,"林浩哲",18)
	(832203222,"周乐轩",18);
CREATE TABLE `student-status`.`class` ( `class` VARCHAR(10), `name` VARCHAR(10), `id` INT, `age` INT, `sex` VARCHAR(1) DEFAULT '男', `time` DATE ) ENGINE=INNODB CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
INSERT INTO class(NAME,id,age,sex)
SELECT NAME,id,age,sex FROM `student`;
UPDATE class SET class='CS161FZ',TIME='2023-01-17' WHERE NAME='林慕宸';
UPDATE class SET class='EE121FZ',TIME='2022-09-24' WHERE NAME='林浩哲';
UPDATE class SET class='EE103FZ',TIME='2023-01-04' WHERE NAME='周乐轩';
DELETE FROM student WHERE id=832203222;
DELETE FROM class WHERE id=832203222;
UPDATE student SET age=19 WHERE id=832203221;
UPDATE class SET age=19 WHERE id=832203221;
SELECT * FROM `class`;
