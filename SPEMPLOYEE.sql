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
/*Create an ER diagram for the given employee database.

 

Write a query to fetch EMP_ID, FIRST_NAME, LAST_NAME, GENDER, and DEPARTMENT from the employee record table, and make a list of employees and details of their department.

 

Write a query to fetch EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPARTMENT, and EMP_RATING if the EMP_RATING is: 

less than two

greater than four 

between two and four

 

Write a query to concatenate the FIRST_NAME and the LAST_NAME of employees in the Finance department from the employee table and then give the resultant column alias as NAME.

 

Write a query to list only those employees who have someone reporting to them. Also, show the number of reporters (including the President).

Write a query to list down all the employees from the healthcare and finance departments using union. Take data from the employee record table.

 

Write a query to list down employee details such as EMP_ID, FIRST_NAME, LAST_NAME, ROLE, DEPARTMENT, and EMP_RATING grouped by dept. Also include the respective employee rating along with the max emp rating for the department.

 

Write a query to calculate the minimum and the maximum salary of the employees in each role. Take data from the employee record table.

 

Write a query to assign ranks to each employee based on their experience. Take data from the employee record table.

 

Write a query to create a view that displays employees in various countries whose salary is more than six thousand. Take data from the employee record table.

 

Write a nested query to find employees with experience of more than ten years. Take data from the employee record table.

 

Write a query to create a stored procedure to retrieve the details of the employees whose experience is more than three years. Take data from the employee record table.

 

Write a query using stored functions in the project table to check whether the job profile assigned to each employee in the data science team matches the organization’s set standard.

 

The standard being:

For an employee with experience less than or equal to 2 years assign 'JUNIOR DATA SCIENTIST',

For an employee with the experience of 2 to 5 years assign 'ASSOCIATE DATA SCIENTIST',

For an employee with the experience of 5 to 10 years assign 'SENIOR DATA SCIENTIST',

For an employee with the experience of 10 to 12 years assign 'LEAD DATA SCIENTIST',

For an employee with the experience of 12 to 16 years assign 'MANAGER'.

 

Create an index to improve the cost and performance of the query to find the employee whose FIRST_NAME is ‘Eric’ in the employee table after checking the execution plan.

 

Write a query to calculate the bonus for all the employees, based on their ratings and salaries (Use the formula: 5% of salary * employee rating).

 

Write a query to calculate the average salary distribution based on the continent and country. Take data from the employee record table.


 */