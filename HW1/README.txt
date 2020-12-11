REPORT
Symbol and their meanings:
Coloured Lines(Mustard/Orange) : Weak Relationship (dashed line)
Black Lines                    : Strong Relationship (solid line)
This is a report of ERD constructed based on programming courses offered during summer vacation to high school students. The different entities are:

Entities:

1. Student: This entity holds various strong as well as weak relationships with other entities such as Projects, Classes, Fees, etc. It has a primary key named
 Stu_ID which is of type int(). With Projects entity, it has a 1:M relationship because a student is allowed to sign up for more than one project since each 
course/project has a duration of 1 week whereas the entire curriculum expands for 6 weeks. The same argument goes for Classes entity. A 1:1 weak relationship 
is observed between Student and Fees entity since a student is destined to pay his/her fees just once. And Stu_ID is added a foreign key as all transactions
 are monitored via Fee_ID primary key. The same argument goes for other weak relationships like Class Rating, Instructor Rating and Project Rating.

2. Instructors: It has a strong relationship with entities like Classes, Projects, Teaching Hours, Project Hours, etc. This entity helps provide all types 
of information regarding instructors that are hired by the owners. The primary key combination used by this entity is Ins_ID and Class_Code. 	   

3. Classes: This entity consists of many primary keys that may have duplicate values individually but are unique when taken together. A strong relationship
 is maintained with Student and Instructors entity. The assumption made here is that the students choose their favorite instructors teaching a particular class.
 And since there are multiple instructors for a given class, hence every instructor would have atleast 1 student. This entity helps get information regarding
 classes the students have signed up for, for example, name of class, class timings as well as what textbooks are preferred by each instructor for a given class.
 This can be seen in weak relationship with Textbooks entity.

4. Projects: The assumption made here is similar to that of Classes entity. It is assumed that there are multiple instructors who can oversee a project and 
students can pick their favorite instructors for a given project. Hence this leads to having a combination of primary keys to make unique rows. It has weak 
relationship with entities such as Project Rating and Tables. 

5. Pay Rate: This a stand-alone entity having no external relationships with other entities. This entity is used to retrieve a constant pay rate for 
teaching as well supervising projects. 

6. Library: This entity has a 1:1 strong relation with Textbooks entity. The primary keys involved are Text_ID from Textbooks entity and Stu_ID from 
Students entity. This entity focusses on maintaining a data of how many books a student checks out at a time. It also mentions the due date for every book
 taken from Library. 

7. Tables: This entity is used to denote that every student is assigned a table according to the projects they have enrolled for. Since a maximum of 4 students
 can be in a group, hence these 4 students would be assigned 1 common table that will have one or more parts of their project. 

8. Parts: This entity stores information regarding different parts used in different projects. The primary keys are Part_ID and Proj_ID from Projects entity. 
Other useful information includes name of the part, it’s cost and which table these parts belong to. It has a strong 1:M relationship with 
Parts_Supplier_Mapping entity. Every project consists of parts that are provided on tables inside a big plastic storage box. It is assumed that these parts
 would be in possession of the group the entire time and would only be returned to the owners at the end of term. 

9. Online Suppliers: This contains a primary key named as Supp_ID. It further maps to Parts_Supplier_Mapping entity in a 1:M strong relationship. 
This entity lists all the information of online suppliers which are used by owners to order a list of parts for the projects. The role of 
Parts_Supplier_Mapping entity is to denote M:M relationship between Parts and Online Suppliers. This means the owner orders multiple parts from 
multiple suppliers depending upon their cost.

10.  Schedule of Classes/Projects: This entity provides students with their schedule for the whole summer by listing down projects they are enrolled in,
 ID for the room and the time when the classes will take place. With the help of Room_ID, it will be possible to figure out name of room and its location
 using Rooms entity. There is a 1:M strong relationship between Student and Schedule of Classes/Projects since students can have more than one schedule for
 all their classes/projects.  

11.  Class/Instructor/Project Rating: These entities are created to mark all the ratings given by students to each category at the end of summer.
 They hold weak 1:M relationships with Student, Instructor and Classes entities since every student can be enrolled under multiple instructors, can take up
 multiple projects and can enroll for more than one classes. There is a common Rate attribute which holds the rating for each of these entities individually. 

