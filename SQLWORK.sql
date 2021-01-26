-- 1.	Create a list of employee names and their full addresses using the INNER JOIN.

SELECT  E.FIRSTNAME, E.LASTNAME,A.ADDRESSLINE1,A.ADDRESSLINE2, A.CITY, A.STATE, A.ZIP1, A.ZIP2
FROM EMPLOYEES E
INNER JOIN ADDRESSES A
ON  E.EMPLOYEEID = A.EMPLOYEEID


--2. Create a list of employee names and their full addresses
-- using the INNER JOIN for employees who live either in Massachusetts or California.

SELECT  E.FIRSTNAME, E.LASTNAME,A.ADDRESSLINE1, A.CITY, A.STATE, A.ZIP1
FROM EMPLOYEES E
INNER JOIN ADDRESSES A
ON E.EMPLOYEEID = A.EMPLOYEEID
WHERE UPPER(A.STATE) = 'MA' OR UPPER (A.STATE) = 'CA'

--3.eate an example of a Cartesian product using the Employees and Addresses table.
SELECT FIRSTNAME, LASTNAME, ADDRESSLINE1,CITY,ZIP1
FROM EMPLOYEES, ADDRESSES

--4. Use a LEFT OUTER JOIN to list all employee’s first and last names as well as the gender and birthdates 
--of their dependents if they have any
SELECT E.FIRSTNAME, E.LASTNAME, E.GENDER, E.BIRTHDATE, D.FIRSTNAME, D.LASTNAME, D.GENDER, D.BIRTHDATE
FROM EMPLOYEES E
LEFT OUTER JOIN DEPENDENTS D
ON E.EMPLOYEEID = D.EMPLOYEEID

--5.Use a RIGHT OUTER JOIN to list all employees first and last names as well as the gender and birthdates 
--of their dependents if they have any (Same as above but change location of tables).

SELECT E.FIRSTNAME, E.LASTNAME, E.GENDER, E.BIRTHDATE, D.FIRSTNAME, D.LASTNAME, D.GENDER, D.BIRTHDATE
FROM EMPLOYEES E
RIGHT OUTER JOIN DEPENDENTS D
ON E.EMPLOYEEID = D.EMPLOYEEID

--6.Use a SELF JOIN to select the employee’s first name, last name, title as well as the manager's first name, 
--last name and title.
SELECT E.EMPLOYEEID, E.FIRSTNAME, E.LASTNAME,E.TITLE, M.FIRSTNAME, M.LASTNAME, E.MANAGERID
FROM EMPLOYEES E
INNER JOIN EMPLOYEES M ON M.EMPLOYEEID = E.MANAGERID
ORDER BY E.EMPLOYEEID

SELECT E.EMPLOYEEID, E.FIRSTNAME, E.TITLE, E.LASTNAME, E.MANAGERID
FROM EMPLOYEES E

UPDATE EMPLOYEES 
SET MANAGERID = '11'
WHERE EMPLOYEEID = '6'


-- 7.Retrieve the employee first name, last name, department name and group name for the employee named Gail Erickson.

SELECT E.FIRSTNAME, E.LASTNAME, D.DEPARTMENTNAME, D.GROUPNAME
FROM EMPLOYEES E
INNER JOIN DEPARTMENTS D
ON E.EMPLOYEEID = D.DEPARTMENTID
WHERE UPPER (E.FIRSTNAME) = 'GAIL' AND UPPER(E.LASTNAME) = 'ERICKSON'


--8.Retrieve the employee first name, last name, address, city, state, zip, department name and group name for the employee named David Bradley.
SELECT E.FIRSTNAME, E.LASTNAME, A.ADDRESSLINE1, A.CITY , A.ZIP1, A.ZIP2, D.DEPARTMENTNAME , D.GROUPNAME
FROM EMPLOYEES E
INNER JOIN ADDRESSES A 
ON E.EMPLOYEEID = A.EMPLOYEEID
INNER JOIN DEPARTMENTS D
ON E.EMPLOYEEID = D.DEPARTMENTID
WHERE UPPER(E.FIRSTNAME) = 'DAVID' AND UPPER(E.LASTNAME) = 'BRADLEY'


-- 9.Retrieve the employee first name, last name, dependent first name, last name and gender for female dependents.
SELECT E.FIRSTNAME, E.LASTNAME, D.FIRSTNAME, D.LASTNAME , D.GENDER
FROM EMPLOYEES E
INNER JOIN DEPENDENTS D
ON E. EMPLOYEEID = D.EMPLOYEEID
WHERE UPPER (D.GENDER) = 'F'

--10.Retrieve the employee first name, last name, dependent first name, last name,birth date 
--for dependents who have birth dates less than or equal to 11/02/2008. 
SELECT E.FIRSTNAME, E.LASTNAME , D.FIRSTNAME, D.LASTNAME,D.BIRTHDATE
FROM EMPLOYEES E
INNER JOIN DEPENDENTS D
ON E.EMPLOYEEID = D.EMPLOYEEID
WHERE D.BIRTHDATE <= '11/02/2008'
ORDER BY D.BIRTHDATE


















































































