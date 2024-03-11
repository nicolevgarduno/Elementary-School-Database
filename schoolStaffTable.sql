CREATE TABLE StaffTables (
	ID INT,
	StaffFirstName VARCHAR(100),
    StaffLastName VARCHAR(100),
    StaffPosition VARCHAR(100),
    EducationLevel VARCHAR(100),
    TeachingAges VARCHAR(100)
);

INSERT INTO StaffTables (ID, StaffFirstName, StaffLastName, StaffPosition, EducationLevel, TeachingAges) VALUES
(1,'Kimberly', 'Baker', 'Teacher', 'B', 'First'),
(2, 'Brooks', 'Taylor', 'Aide', 'HS', 'First'),
(3, 'Charlie', 'Moore', 'Teacher', 'B', 'Second'),
(4, 'Samuel', 'Bandini', 'Aide', 'HS', 'Second'),
(5, 'Brooks', 'Brown', 'Teacher', 'B', 'Third'),
(6, 'Evertett', 'Rivera', 'Aide', 'HS', 'Third'),
(7, 'Clara', 'Jones', 'Teacher', 'B', 'Fourth'),
(8, 'Juniper', 'Gonzalez', 'Aide', 'HS', 'Fourth'),
(9, 'Robert', 'Ramirez', 'Teacher', 'B', 'Fifth'),
(10, 'Addison', 'Lewis', 'Aide', 'HS', 'Fifth');

SELECT ID, StaffFirstName, StaffLastName, StaffPosition, EducationLevel, TeachingAges
FROM StaffTables
WHERE ID = 2;

