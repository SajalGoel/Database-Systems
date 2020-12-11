/* Oracle Database - https://livesql.oracle.com/  */

create table JunkMail (
    Name varchar2(20) not null,
    Address varchar2(30) not null,
    ID number not null,
    SameFam number
);

INSERT INTO JunkMail (Name, Address, ID, SameFam) 
VALUES  
('Alice', 'A', 10, NULL);

INSERT INTO JunkMail (Name, Address, ID, SameFam) 
VALUES  
('Bob', 'B', 15, NULL);

INSERT INTO JunkMail (Name, Address, ID, SameFam) 
VALUES  
('Carmen', 'C', 22, NULL);

INSERT INTO JunkMail (Name, Address, ID, SameFam) 
VALUES  
('Diego', 'A', 9, 10);

INSERT INTO JunkMail (Name, Address, ID, SameFam) 
VALUES  
('Ella', 'B', 3, 15);

INSERT INTO JunkMail (Name, Address, ID, SameFam) 
VALUES  
('Farkhad', 'D', 11, NULL);

Delete From JunkMail J1
Where J1.SameFam IS NULL
AND J1.Address IN (
Select Address
From JunkMail J2
Where J1.ID = J2.SameFam
);

