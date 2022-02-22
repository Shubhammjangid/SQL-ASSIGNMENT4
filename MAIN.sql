
--TABLE TYPE NAME EXAMPLE
CREATE TYPE Example AS TABLE
(LessonId   INT, 
 LessonName VARCHAR(100)
)

--SAME FOR TABLE 
CREATE TABLE Lesson ( 
        Id    INT PRIMARY KEY, 
        LName VARCHAR(50)
                )

--TO INSERT VALUE IN TYPE FROM PROCEDURE
DECLARE @VarLessonType AS Example
 
INSERT INTO @VarLessonType
VALUES ( 1, 'Math'
       )
INSERT INTO @VarLessonType
VALUES ( 2, 'Science'
       )
INSERT INTO @VarLessonType
VALUES ( 3, 'Geometry'
       )
    
--EXCEUTION OF PROCEDURE
EXECUTE InsertLesson @VarLessonType

--INSERTED INFO
SELECT * FROM Lesson

SELECT * FROM EmployeeDetail

UPDATE EmployeeDetail
SET Salary = Salary * 0.25
WHERE Experience>2


--SUB QUERY
--OUTER QUERY
SELECT A.FirstName , A.LastName , E.Salary ,E.Department
FROM EmployeeInfo A , EmployeeDetail E
WHERE A.EmpID=E.EmpID AND E.Salary>3000
--INNER QUERY
(SELECT Department
FROM EmployeeDetail
WHERE Salary>3000)

--CTE(COMMON TABLE EXPRESSION)
WITH EX(ROW) AS
(SELECT ROW_NUMBER() OVER(ORDER BY NAME ASC) AS ROW
FROM EmployeeDetail
WHERE Salary>30000)




