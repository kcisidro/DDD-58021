CREATE DATABASE exercise2;
CREATE TABLE EMP_1(EMP_NUM CHAR(3) NOT NULL, EMP_Lname VARCHAR(15) NULL, EMP_FNAME VARCHAR(15) NULL, EMP_INITIAL VARCHAR(1) NULL, EMP_HIREDATE DATE NULL, JOB_CODE CHAR(3) NULL);
SELECT *FROM EMP_1;
INSERT INTO emp_1(EMP_NUM, EMP_Lname, EMP_FNAME, EMP_INITIAL, EMP_HIREDATE, JOB_CODE)
VALUES('1','San Pascual', 'Mara', 'T', '2020-09-23', '501');
INSERT INTO emp_1(EMP_NUM, EMP_Lname, EMP_FNAME, EMP_INITIAL, EMP_HIREDATE, JOB_CODE)
VALUES('2','Isidro', 'Kassandra', 'P', '2020-09-01', '502');
SELECT *FROM EMP_1
WHERE JOB_CODE = '502';

Set SQL_SAFE_UPDATES = 0 ;

Update emp_1
Set EMP_NUM ='101',
EMP_Lname = 'Nevas',
EMP_FNAME = 'John',
EMP_INITIAL = 'G',
EMP_HIREDATE =  '1994-11-08',
JOB_CODE = '502'
where EMP_Num = 1;

Update emp_1
Set EMP_NUM ='102',
EMP_Lname = 'Senior',
EMP_FNAME = 'David',
EMP_INITIAL = 'H',
EMP_HIREDATE =  '1987-07-12',
JOB_CODE = '501'
where EMP_Num = 2;

insert into emp_1 (EMP_NUM, EMP_Lname, EMP_FNAME, EMP_INITIAL, EMP_HIREDATE, JOB_CODE)
VALUES ('103', 'Arbos', 'June', 'E', '1996-12-01', '500'),
('104', 'Ramoras', 'Anne', 'K', '1998-11-15', '501'),
('105', 'Joson', 'Alice', 'P', '1993-02-01', '502'),
('106', 'Smith', 'William', 'D', '1990-06-23', '500'),
('107', 'Alonso', 'Mara', 'F', '1991-10-10', '500'),
('108', 'Washington', 'Raf', 'S', '1989-08-22', '501'),
('109', 'Field', 'Larry', 'W', '1999-07-18', '501');

SELECT * FROM emp_1
WHERE JOB_CODE  = '502';

Update exercise1.emp_1 set JOB_CODE ='501' where EMP_NUM = '106';
DELETE FROM exercise1.emp_1 where EMP_NUM = '106';