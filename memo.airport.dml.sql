-- delete data from all tables
DELETE FROM flight;
DELETE FROM plane;
DELETE FROM airport;
DELETE FROM city;



-- populate table city
INSERT INTO city VALUES ('Belfast','UK',330000);
INSERT INTO city VALUES ('Chicago','USA',2700000);
INSERT INTO city VALUES ('Denver','USA',680000);
INSERT INTO city VALUES ('Edmonton','CA',900000);
INSERT INTO city VALUES ('Kyoto','JP',1400000);
INSERT INTO city VALUES ('London','UK',8700000);
INSERT INTO city VALUES ('Lyon','FR',480000);
INSERT INTO city VALUES ('Montreal','CA',1700000);
INSERT INTO city VALUES ('Moscow','RS',12200000);
INSERT INTO city VALUES ('New York','USA',8500000);
INSERT INTO city VALUES ('Paris','FR',2200000);
INSERT INTO city VALUES ('Perth','AU',1600000);
INSERT INTO city VALUES ('Portland','USA',640000);
INSERT INTO city VALUES ('Seattle','USA',700000);
INSERT INTO city VALUES ('Sydney','AU',4000000);
INSERT INTO city VALUES ('Tokyo','JP',13600000);
INSERT INTO city VALUES ('Vancouver','CA',650000);


-- populate table airport
INSERT INTO airport VALUES ('BFS','Belfast','UK',1);
INSERT INTO airport VALUES ('CDG','Paris','FR',6);
INSERT INTO airport VALUES ('DEN','Denver','USA',2);
INSERT INTO airport VALUES ('DME','Moscow','RS',10);
INSERT INTO airport VALUES ('JFK','New York','USA',8);
INSERT INTO airport VALUES ('KIX','Kyoto','JP',6);
INSERT INTO airport VALUES ('LGA','New York','USA',3);
INSERT INTO airport VALUES ('LHR','London','UK',12);
INSERT INTO airport VALUES ('LTN','London','UK',1);
INSERT INTO airport VALUES ('LYS','Lyon','FR',1);
INSERT INTO airport VALUES ('NRT','Tokyo','JP',5);
INSERT INTO airport VALUES ('ORD','Chicago','USA',3);
INSERT INTO airport VALUES ('ORY','Paris','FR',2);
INSERT INTO airport VALUES ('PDX','Portland','USA',1);
INSERT INTO airport VALUES ('PER','Perth','AU',1);
INSERT INTO airport VALUES ('SEA','Seattle','USA',1);
INSERT INTO airport VALUES ('STN','London','UK',4);
INSERT INTO airport VALUES ('SYD','Sydney','AU',1);
INSERT INTO airport VALUES ('YEG','Edmonton','CA',1);
INSERT INTO airport VALUES ('YUL','Montreal','CA',1);
INSERT INTO airport VALUES ('YVR','Vancouver','CA',1);


-- populate table plane
INSERT INTO plane VALUES (1,'Boeing 747',300,150);
INSERT INTO plane VALUES (2,'Airbus A330',320,130);
INSERT INTO plane VALUES (3,'DC-10',280,150);
INSERT INTO plane VALUES (4,'Boeing 737',200,75);
INSERT INTO plane VALUES (5,'Airbus A320',180,100);
INSERT INTO plane VALUES (6,'Tu-204',150,150);
INSERT INTO plane VALUES (7,'ATR 42',70,50);
INSERT INTO plane VALUES (8,'Saab 340',60,30);


-- populate table flight
INSERT INTO flight VALUES('AZ101','Wednesday','DEN','22:00','CDG','6:00',1);
INSERT INTO flight VALUES('AZ159','Thursday','SEA','9:00','DME','17:00',2);
INSERT INTO flight VALUES('AZ178','Sunday','YUL','16:00','JFK','17:00',6);
INSERT INTO flight VALUES('BA921','Monday','BFS','6:00','LHR','7:00',8);
INSERT INTO flight VALUES('LH522','Wednesday','NRT','12:00','DEN','20:00',3);
INSERT INTO flight VALUES('LH532','Friday','YUL','10:00','DEN','13:00',8);
INSERT INTO flight VALUES('LH542','Thursday','YVR','22:00','PDX','23:00',3);
INSERT INTO flight VALUES('LH575','Sunday','ORD','16:00','PDX','19:00',5);
INSERT INTO flight VALUES('LH581','Sunday','ORD','6:00','KIX','14:00',1);
INSERT INTO flight VALUES('TW211','Thursday','DEN','8:00','JFK','12:00',4);
INSERT INTO flight VALUES('TW250','Monday','YEG','9:00','PDX','11:00',8);
INSERT INTO flight VALUES('UA412','Thursday','SEA','16:00','SYD','2:00',1);
INSERT INTO flight VALUES('UA431','Friday','PER','11:00','SYD','15:00',6);
INSERT INTO flight VALUES('UA455','Saturday','ORD','15:00','DEN','17:00',5);
INSERT INTO flight VALUES('UA465','Saturday','YUL','11:00','ORD','14:00',3);
INSERT INTO flight VALUES('UA472','Tuesday','JFK','10:00','LHR','17:00',2);
INSERT INTO flight VALUES('UA499','Wednesday','YEG','18:00','JFK','21:00',4);
