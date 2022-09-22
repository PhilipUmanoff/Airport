--	Problem 1
--	Total # of Unique Flights 
SELECT COUNT (Flight_ID )
FROM Flight 


--	Problem 2
--	Total # of Seattle Departure Flights
SELECT COUNT (Flight_ID)
FROM Flight AS f
	JOIN Airport AS a1 
	ON a1.Code = f.Departure_Airport_FK
WHERE 
	a1.City_Name_FK = 'Seattle'
	AND a1.City_Nation_FK = 'USA'


--	Problem 3 CONTINUE
--	The # of flights departing from Portland on Wednesday
SELECT COUNT (Flight_ID)
FROM 	
	Flight AS f
	JOIN Airport AS a1 
	ON a1.Code = f.Departure_Airport_FK
WHERE 	
	a1.City_Name_FK = 'Portland'
	AND a1.City_Nation_FK = 'USA'
	AND f.Day_Of_Week = 'Wednesday'


--	Problem 4
--	The # of international flights departing from Portland on Wednesday
SELECT COUNT (f.Flight_ID) AS INTERNATIONAL
FROM 	
	Flight AS f
	INNER JOIN Airport AS a1 
	ON a1.Code = f.Departure_Airport_FK
	INNER JOIN Airport AS a2 
	ON a2.Code = f.Arrival_Airport_FK
WHERE 
	a1.City_Nation_FK <> a2.City_Nation_FK	
	AND a1.City_Name_FK = 'Portland'
	AND a1.City_Nation_FK = 'USA'
	AND f.Day_Of_Week = 'Wednesday'


--	Problem 5
--	The number of international flights departing every week from 
--	each US city
SELECT a1.City_Name_FK, COUNT(a1.City_Name_FK) AS Num_Of_Flights
FROM 	
	Flight AS f
	INNER JOIN Airport AS a1 
	ON a1.Code = f.Departure_Airport_FK
	INNER JOIN Airport AS a2 
	ON a2.Code = f.Arrival_Airport_FK
WHERE 
	a1.City_Nation_FK <> a2.City_Nation_FK	
	AND a1.City_Nation_FK = 'USA'
GROUP BY (a1.City_Name_FK)


--	Problem 6
--	Canadian cities having at least 2 direct flights to US
SELECT a1.City_Name_FK, COUNT(a1.City_Name_FK) AS Num_Of_US_FLights
FROM 	
	Flight AS f
	JOIN Airport AS a1
	ON a1.Code = f.Departure_Airport_FK
	JOIN Airport AS a2 
	ON a2.Code = f.Arrival_Airport_FK
WHERE 
	a1.City_Nation_FK = 'CA'
	AND a2.City_Nation_FK = 'USA'
GROUP BY (a1.City_Name_FK)
HAVING COUNT (a1.City_Name_FK) > 1
--	Almost forgot to do GROUPBY before counting!



