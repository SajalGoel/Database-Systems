/* Oracle Database - https://livesql.oracle.com/  */ 

create table Enrollment ( 
    SID number not null, 
    Classname varchar2(30) not null, 
    Grade varchar2(10) not null 
);

INSERT INTO Enrollment (SID, CLASSNAME, GRADE) 
VALUES  
(123, 'ARCH201', 'A');

INSERT INTO Enrollment (SID, CLASSNAME, GRADE) 
VALUES  
(123, 'QUAN432', 'B');

INSERT INTO Enrollment (SID, ClassName, Grade) 
VALUES(662, 'AMER352', 'B');

INSERT INTO Enrollment (SID, ClassName, Grade) 
VALUES(662, 'ECON966', 'A');

INSERT INTO Enrollment (SID, ClassName, Grade) 
VALUES(662, 'QUAN432', 'B');

INSERT INTO Enrollment (SID, ClassName, Grade) 
VALUES(345, 'QUAN432', 'A');

INSERT INTO Enrollment (SID, ClassName, Grade) 
VALUES(345, 'ECON966', 'D');


SELECT ClassName, COUNT(ClassName) AS Total 
FROM Enrollment  
GROUP BY ClassName 
ORDER BY ClassName DESC