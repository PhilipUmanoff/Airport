DROP TABLE flight;
DROP TABLE plane;
DROP TABLE airport;
DROP TABLE city;

CREATE TABLE city (
  name VARCHAR(50) 
, nation VARCHAR(50)
, population INT
, CONSTRAINT pk_city PRIMARY KEY (name,nation)
);

CREATE TABLE airport (
  code VARCHAR(5) PRIMARY KEY
, city_name_fk VARCHAR(50)
, city_nation_fk VARCHAR(50)
, num_tracks INT
, CONSTRAINT fk_city FOREIGN KEY (city_name_fk,city_nation_fk) 
    REFERENCES city(name,nation)
);

CREATE TABLE plane (
  id INT PRIMARY KEY
, type VARCHAR(15)
, num_passengers INT
, cargo_size INT
);

CREATE TABLE flight (
  flight_id VARCHAR(10) PRIMARY KEY
, day_of_week VARCHAR(15)
, departure_airport_fk VARCHAR(5)
, departure_time VARCHAR(10)
, arrival_airport_fk VARCHAR(5)
, arrival_time VARCHAR(10)
, plane_fk INT
, CONSTRAINT fk_departure_airport FOREIGN KEY (departure_airport_fk) 
    REFERENCES airport(code)
, CONSTRAINT fk_arrival_airport FOREIGN KEY (arrival_airport_fk) 
    REFERENCES airport(code)
, CONSTRAINT fk_plane FOREIGN KEY (plane_fk) 
    REFERENCES plane(id)
);
