/* Lab 2 -part 4 - Creating a view */

USE ece356db_e56wong; 



/* Add some more rows to the Project table(needed for example below) */

INSERT INTO Project(projID, title, budget, funds) VALUES(645, 'Medical Center Construction', 10000000, 2500000);
INSERT INTO Project(projID, title, budget, funds) VALUES(623, '2013 Conference', 6500, 3000);
INSERT INTO Project(projID, title, budget, funds) VALUES(624, '2014 Conference', 7500, 7500);




DROP VIEW IF EXISTS
    ProjectLowBudget;

CREATE VIEW ProjectLowBudget AS 
SELECT projID,title, budget  FROM Project WHERE budget <=500000;


/* Query using this view */

-- SELECT * FROM ProjectLowBudget WHERE title like "%Conference%";


DROP VIEW IF EXISTS
    EmpDepView;

CREATE VIEW EmpDepView AS 
SELECT empID, empName, job, Department.* FROM Employee INNER JOIN Department ON Employee.deptID=Department.deptID;


SELECT * FROM EmpDepView;

SELECT * FROM EmpDepView WHERE EmpDepView.deptName = "marketing";

SELECT p.title, emp.empName, emp.deptName from EmpDepView as emp INNER JOIN Assigned as a ON emp.empID=a.empID INNER JOIN Project as p ON p.projID=a.projID;






