CREATE INDEX salary_index ON Employee(salary) USING BTREE;

CREATE INDEX deptID_index ON Department(deptID) USING HASH;

CREATE INDEX empID_index ON Employee(empID) USING HASH;
