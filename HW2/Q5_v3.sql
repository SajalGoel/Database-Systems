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


Select Chef from Dessert Where Dish='Creme Brulee'
Intersect
Select Chef From Dessert Where Dish='Apple Pie'
Intersect
Select Chef From Dessert Where Dish='Tiramisu';

/* Explanation:-  */
/* This is YET another way of solving the problem. Here we have used Intersect to find out names of Chef who knows
how to prepare all the 3 dishes. First, we find out all Chefs who knows how to prepare Creme Brulee. Next
Chefs are chosen based on their ability to prepare Apple Pie and in the end, those Chef are chosen who are proficient 
in preparing Tiramisu. Intersect displays rows which are common in all tables. Hence when we use Intersect on all
our new records, the query selects the names of Chef who are common in all three searches, ie, who knows how to 
prepare all the 3 dishes. This is then displayed to the user. */