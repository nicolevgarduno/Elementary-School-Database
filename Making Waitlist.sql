CREATE TABLE Waitlist (
    Priority int,
    first_name varchar(50),
    last_name varchar(50),
    sibling_id  int);
    
    
Insert into Waitlist (Priority, first_name, last_name) 
values (1,'John','Nora'),
	   (2,'Phillip','Sharpe'),
       (3,'Sophia','Cassidy'),
      (4,'Nancy','Perez'),
       (5,'Tania','Johnson'),
		(6,'Gabe','Duncan');


Update waitlist
set sibling_id = (select StudentID from Students where Students.StudentLastName = waitlist.last_name);
