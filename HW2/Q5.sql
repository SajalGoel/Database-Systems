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

Select Chef
From Dessert
Where Dish IN ('Creme Brulee', 'Apple Pie', 'Tiramisu')
Group By Chef
Having Count(Distinct Dish) = 3
Order By Chef;

/* Explanation:-  */
/* We first create the table named "Dessert" having appropriate columns and data types. Each of them is Not Null
since these columns can not hold Null values. Next we insert a bunch of sample data into our table using Insert command.
After insertion, our actual query begins. We are displaying the value of Chef based on their ability to prepare 
3 dishes - Creme Brulee, Apple Pie and Tiramisu. This can be seen in the 'Where' part of query. We have used 'IN' 
to store the names of 3 dishes. But this would display the names of Chef who knows how to prepare EITHER of these 3 dishes
which is not what we want. Hence to fix it, we have grouped the list by Chef names and added a count of 3 distinct dishes
which tells the query that ALL 3 dishes needs to be checked for every Chef. In the last we sort Chef names in 
ascending order to display the output in correct format. */


