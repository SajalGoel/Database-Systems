/* Oracle Database - https://livesql.oracle.com/  */ 

create table Work_Order ( 
    ProjectID varchar2(10) not null, 
    Step number(10) not null, 
    Status varchar2(10) not null 
);

INSERT INTO Work_Order (ProjectID, Step, Status) 
VALUES  
('P100', 0, 'C');

INSERT INTO Work_Order (ProjectID, Step, Status) 
VALUES  
('P100', 1, 'W');

INSERT INTO Work_Order (ProjectID, Step, Status) 
VALUES  
('P100', 2, 'W');

INSERT INTO Work_Order (ProjectID, Step, Status) 
VALUES  
('P201', 0, 'C');

INSERT INTO Work_Order (ProjectID, Step, Status) 
VALUES  
('P201', 1, 'C');

INSERT INTO Work_Order (ProjectID, Step, Status) 
VALUES  
('P333', 0, 'W');

INSERT INTO Work_Order (ProjectID, Step, Status) 
VALUES  
('P333', 1, 'W');

INSERT INTO Work_Order (ProjectID, Step, Status) 
VALUES  
('P333', 2, 'W');

INSERT INTO Work_Order (ProjectID, Step, Status) 
VALUES  
('P333', 3, 'W');

Select ProjectID 
From Work_Order
Where Step=0 And Status='C' And
ProjectID IN (
Select ProjectID from Work_Order
Where Step=1 And Status='W'
);

