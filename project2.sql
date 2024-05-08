USE project2;

CREATE TABLE s(
sID int,
sfirstname varchar(60),
slastname varchar(60),
age int,
sex varchar(60),
bluebook boolean,
primary key (sID)
);

INSERT INTO s(sID,sfirstname,slastname,age,sex,bluebook) VALUES
('1001','Ivy','West','3','F',TRUE),
('1002','Karter','Daughtler','3','M',TRUE),
('1003','Luna','Brown','3','F',TRUE),
('1004','Quinn','Mitchell','3','M',TRUE),
('1005','Callie', 'Moore','5','F',TRUE),
('1006','Reese','Raven','5','F',TRUE),
('1007','Christian','June','5','M',TRUE),
('1008','Ezekiel', 'Bolt','5','M',TRUE);

CREATE TABLE p(
pID int,
pfirstname varchar(60),
plastname varchar(60),
sID int,
phN varchar(60),
Rs varchar(60),
primary key (pID),
foreign key (sID) REFERENCES s(sID)
);


INSERT INTO p(pID,pfirstname,plastname,sId,phN,Rs) 
VALUES
	('1','Samantha','West','1001','6459449531','N'),
	('2','Jason', 'West','1001','2010939687','Y'),
    ('3','Leah', 'Daughtler','1002','9028780390','N'),
	('4','Skylar', 'Daughtler','1002','7358484397','N'),
    ('5','Eva', 'Brown','1003','2629755404','N'),
    ('6','Theodore','Brown','1003','6592726829','N'),
    ('7','Mila', 'Mitchell','1004','2248440137','N'),
    ('8','Jonah','Moore','1005','4861148175','N'),
    ('9','Londyn', 'Moore','1005','5992033476','N'),
    ('10','Renae', 'Raven','1006','9739601519','N'),
    ('11','Camden', 'Raven','1006','9299140537','N'),
    ('12','Nicolas', 'June','1007','8954302064','N'),
    ('13','Julia', 'June','1007','878286268','N'),
    ('14','Victor','Bolt','1008','3467907517','N'),
    ('15','Ember', 'Bolt','1008','7709674501','N');
    
CREATE TABLE t(
tID int,
tfirstname varchar(60),
tlastname varchar(60),
tpos varchar(60),
elvl varchar(60),
tclass varchar(60),
primary key (tID)
);

INSERT INTO t(tID,tfirstname,tlastname,tpos,elvl,tclass) 
VALUES
('01','Gunther','Smith','Aide','Ms','3'),
('02','Rachel','Green','Aide','B','5'),
('03','Monica','Geller','Lead','Ms','3'),
('04','Chandler','Bing','Aide','B','5'),
('05','Joey','Tribianni','Aide','Hs','3'),
('06','Pheobe','Buffay','Lead','Ms','5'),
('07','Ross','Geller','Lead','Phd','5'),
('08','Mike','Hannigan','Lead','B','3');

#Phase 2

CREATE TABLE c(
classRno int PRIMARY KEY,
class varchar(60),
ageGroup int,
section varchar(1),
leadTeacherID INT,
techerAideID INT,
classCapacity int,
FOREIGN KEY (leadTeacherID) REFERENCES t(tID),
FOREIGN KEY (techerAideID) REFERENCES t(tID)
);

insert into c(classRno,class,ageGroup,section) values
('301','Threes','3','A'),
('302','Threes','3','B'),
('501','Fives','5','A'),
('502','Fives','5','B');



select sID from s where age = '3' and sex = 'M' 











