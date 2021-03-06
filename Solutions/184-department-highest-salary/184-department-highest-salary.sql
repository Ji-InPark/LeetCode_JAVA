# Write your MySQL query statement below
SELECT 
DISTINCT
A.NAME AS Department,
B.NAME AS Employee,
B.SALARY AS Salary
FROM DEPARTMENT AS A
JOIN EMPLOYEE AS B ON (A.ID = B.DEPARTMENTID)
JOIN(
    SELECT 
    MAX(SALARY) AS MAX_SALARY,
    DEPARTMENTID AS ID
    FROM EMPLOYEE
    GROUP BY DEPARTMENTID    
) C ON (B.SALARY = C.MAX_SALARY AND A.ID = C.ID)
