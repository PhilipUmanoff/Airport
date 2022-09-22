/* PROBLEM 1 */
SELECT 
	C.Name AS cName,
	C.Population AS cPop
FROM 
	Airport AS A 
	JOIN City AS C 
	ON C.Name = A.City_Name_FK
WHERE 
	A.Num_Tracks > 1
	

/* PROBLEM 2 */
/*To avoid using SEA code, I simply added the City Name for each Airport next to their Airport Code */
SELECT
	--F.Departure_Airport_FK,
	a2.City_Name_FK
FROM		
	Flight AS F
	INNER JOIN Airport AS a1
	ON a1.Code = F.Departure_Airport_FK
	INNER JOIN Airport as a2
	ON a2.code = F.Arrival_Airport_FK
WHERE
	a1.City_Name_FK = 'Seattle'
ORDER BY a2.City_Name_FK


/* PROBLEM 3 */
SELECT 
	C.Name AS CityName,
	C.Nation,
	C.Population	
FROM
	City AS C 
	JOIN Airport AS A 
	ON C.Name = A.City_Name_FK
	JOIN Flight AS F
	ON F.Arrival_Airport_FK = A. Code
WHERE 
	F.Flight_ID = 'UA472';


/* PROBLEM 4 */
/* This and Number 5 were the hardest by far! I may have done this incorrectly but this was the best I could do
	You can remove the comments from the SELECT to get a clearer output */
SELECT
	--A.City_Name_FK, 
	--P.ID,
	P.Type
FROM		
	Flight AS F
	INNER JOIN Airport AS A
	ON A.Code = F.Departure_Airport_FK
	INNER JOIN Plane AS P
	ON P.ID = F.Plane_FK
WHERE 
	City_Name_FK = 'Denver'


/* PROBLEM 5 */
/* Like Problem 4, I believe I did something incorrect but I wasn't sure how else to Join Airport and FLight tables.
	THis is the best I can do at the moment. */
SELECT 
	--A.City_Name_FK,
	P.Type,
	P.Num_Passengers
FROM		
	Flight AS F
	INNER JOIN Airport AS A
	ON A.Code = F.Departure_Airport_FK
	INNER JOIN Plane AS P
	ON P.ID = F.Plane_FK
WHERE 
	City_Name_FK = 'Chicago'
ORDER BY
	P.Type


/* PROBLEM 6 */
SELECT 
	a1.City_Name_FK AS Depart_City,
	a1.City_Nation_FK AS Depart_Nation,
	--a2.City_Name_FK AS Arrival_City,
	a2.City_Nation_FK AS Arrival_Nation
FROM 	
	Flight AS f
	INNER JOIN Airport AS a1 
	ON a1.Code = f.Departure_Airport_FK
	INNER JOIN Airport AS a2 
	ON a2.Code = f.Arrival_Airport_FK
WHERE 
	a1.City_Nation_FK <> a2.City_Nation_FK	

/* I am going to leave extra columns here instead of just returning the city names, 
this was a complicated problem which took me a while and I like the output with more than the depart city column as proof of international flights */