/* Oracle Database - https://livesql.oracle.com/  */

CREATE TABLE HotelStays
(roomNum number NOT NULL,
arrDate DATE NOT NULL,
depDate DATE NOT NULL,
guestName varchar2(30) NOT NULL);

alter table HotelStays add constraint hotelstays_pk primary key (roomNum, arrDate);

alter table HotelStays add constraint Chk_Date CHECK(depDate >= arrDate);

/* Here we are first creating the table with appropriate column names. Then we are adding a constraint 
called "hotelstays_pk" to make (roomNum, arrDate) as Primary Keys. After this step, we add another constraint
called "Chk_Date" which checks if departure date is greater than arrival date. This fixes the issue with existing table.
Now if we try to insert inappropriate rows, the database will throw an error! */