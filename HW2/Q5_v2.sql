/* Oracle Database - https://livesql.oracle.com/  */

create table Dessert ( 
    Chef varchar2(10) not null, 
    Dish varchar2(40) not null  
);

INSERT INTO Dessert (Chef, Dish) 
VALUES  
('A', 'Apple Pie');

INSERT INTO Dessert (Chef, Dish) 
VALUES  
('A', 'Beignet');

INSERT INTO Dessert (Chef, Dish) 
VALUES  
('A', 'Andes Chocolate Cake');

INSERT INTO Dessert (Chef, Dish) 
VALUES  
('B', 'Tiramisu');

INSERT INTO Dessert (Chef, Dish) 
VALUES  
('B', 'Creme Brulee');

INSERT INTO Dessert (Chef, Dish) 
VALUES  
('B', 'Beignet');

INSERT INTO Dessert (Chef, Dish) 
VALUES  
('C', 'Tiramisu');

INSERT INTO Dessert (Chef, Dish) 
VALUES  
('C', 'Creme Brulee');

INSERT INTO Dessert (Chef, Dish) 
VALUES  
('D', 'Apple Pie');

INSERT INTO Dessert (Chef, Dish) 
VALUES  
('D', 'Tiramisu');

INSERT INTO Dessert (Chef, Dish) 
VALUES  
('D', 'Creme Brulee');

INSERT INTO Dessert (Chef, Dish) 
VALUES  
('E', 'Apple Pie');

INSERT INTO Dessert (Chef, Dish) 
VALUES  
('E', 'Bananas Foster');

INSERT INTO Dessert (Chef, Dish) 
VALUES  
('E', 'Creme Brulee');

INSERT INTO Dessert (Chef, Dish) 
VALUES  
('E', 'Tiramisu');

Select d1.Chef
From Dessert d1
Inner Join Dessert d2 On (d2.Chef=d1.Chef And d2.Dish='Creme Brulee')
Inner Join Dessert d3 On (d3.Chef=d1.Chef And d3.Dish='Apple Pie')
Where d1.Dish='Tiramisu';

/* Explanation:-  */
/* This is another way of solving the problem. Here we have used the logic of Inner Join to seperate out
rows where a Chef knows how to prepare all 3 dishes. All Inner Join is done on same table but with 
different name. The first join focusses on Creme Brulee dish, second inner join finds all rows where 
Chef knows how to prepare Apple Pie and the 'Where' condition in the end fulfills our third condition. 
Rows from all joins are combined together to get the actual desired output and Chef is displayed. */