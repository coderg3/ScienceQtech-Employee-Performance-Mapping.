/*Create a database named employee, then import data_science_team.csv proj_table.csv and emp_record_table.csv into the employee database from the given resources.*/
-- CREATE DATABASE spempployee
USE sqempployee;
SHOW tables;
SELECT * FROM datascienceteam;
SELECT * FROM emprecordtable; 
SELECT * FROM projtable;
/*Create an ER diagram for the given employee database*/
-- Tried to create relation between tables using keys -- 
ALTER TABLE projtable
ADD PRIMARY KEY(PROJECT_ID(15));
ALTER TABLE emprecordtable
add CONSTRAINT FK_PROJ_ID
FOREIGN KEY (PROJ_ID(15))
REFERENCES projtable(PROJECT_ID);
use testtrial;
CREATE TABLE data_science_team(
    employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    hire_date DATE,
    salary DECIMAL(10, 2)
);

LOAD DATA INFILE 'E:/Sql/data_science_team.csv' INTO TABLE testtrial.data_science_team
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 LINES;



SELECT EMP_ID,FIRST_NAME,LAST_NAME,GENDER,DEPT FROM emprecordtable
JOIN  dept ON emprecordtable.DEPT = DEPT.DEPT;
SELECT EMP_ID,FIRST_NAME,LAST_NAME,GENDER,DEPT
 FROM emprecordtable where DEPT= "HEALTHCARE";
SELECT DISTINCT E.EMP_ID,E.FIRST_NAME,E.LAST_NAME,E.GENDER,D.DEPT FROM emprecordtable E 
JOIN datascienceteam D ON E.DEPT = D.DEPT;
SELECT EMP_ID,FIRST_NAME,LAST_NAME,GENDER,DEPT FROM emprecordtable  GROUP BY DEPT;
SELECT E.EMP_ID,E.FIRST_NAME,E.LAST_NAME,E.GENDER,D.DEPT FROM emprecordtable E 
JOIN datascienceteam D ON E.DEPT = D.DEPT GROUP BY E.EMP_ID,E.FIRST_NAME,E.LAST_NAME,E.GENDER;
