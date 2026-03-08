-- =========================
-- Table Creation Statements
-- =========================

CREATE TABLE airline (
    AirlineID INT PRIMARY KEY,
    Name VARCHAR(100)
);

CREATE TABLE airport (
    AirportID INT PRIMARY KEY,
    Name VARCHAR(100),
    City VARCHAR(50),
    StateCountry VARCHAR(50),
    IATA_Code VARCHAR(10)
);

CREATE TABLE aircraft (
    AircraftID INT PRIMARY KEY,
    RegistrationNumber VARCHAR(20),
    TotalSeats INT,
    AirlineID INT,
    FOREIGN KEY (AirlineID) REFERENCES airline(AirlineID)
);

CREATE TABLE passenger (
    PassengerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Email VARCHAR(100),
    Phone VARCHAR(15)
);

CREATE TABLE flight (
    FlightID INT PRIMARY KEY,
    AirlineID INT,
    AircraftID INT,
    DepartureAirportID INT,
    ArrivalAirportID INT,
    Status VARCHAR(20),
    Timings DATETIME,
    FOREIGN KEY (AirlineID) REFERENCES airline(AirlineID),
    FOREIGN KEY (AircraftID) REFERENCES aircraft(AircraftID),
    FOREIGN KEY (DepartureAirportID) REFERENCES airport(AirportID),
    FOREIGN KEY (ArrivalAirportID) REFERENCES airport(AirportID)
);

CREATE TABLE reservations (
    ReservationID INT PRIMARY KEY,
    PassengerID INT,
    FlightID INT,
    BookingDate DATE,
    FOREIGN KEY (PassengerID) REFERENCES passenger(PassengerID),
    FOREIGN KEY (FlightID) REFERENCES flight(FlightID)
);

-- =========================
-- Data Insert Statements
-- =========================

-- Airline Data
INSERT INTO airline VALUES (1, 'Air India');
INSERT INTO airline VALUES (2, 'IndiGo');
INSERT INTO airline VALUES (3, 'Emirates');
INSERT INTO airline VALUES (4, 'AirAsia India');
INSERT INTO airline VALUES (5, 'SriLankan Airlines');
INSERT INTO airline VALUES (6, 'Swiss International');
INSERT INTO airline VALUES (7, 'Finnair');
INSERT INTO airline VALUES (8, 'Aeroflot');
INSERT INTO airline VALUES (9, 'Malaysia Airlines');
INSERT INTO airline VALUES (10, 'Thai Airways');
INSERT INTO airline VALUES (11, 'Korean Air');
INSERT INTO airline VALUES (12, 'China Eastern');
INSERT INTO airline VALUES (13, 'Eva Air');
INSERT INTO airline VALUES (14, 'Philippine Airlines');
INSERT INTO airline VALUES (15, 'Garuda Indonesia');

-- Airport Data
INSERT INTO airport VALUES (1, 'Indira Gandhi International Airport', 'New Delhi', 'India', 'DEL');
INSERT INTO airport VALUES (2, 'Chhatrapati Shivaji Maharaj International Airport', 'Mumbai', 'India', 'BOM');
INSERT INTO airport VALUES (3, 'Dubai International Airport', 'Dubai', 'UAE', 'DXB');
INSERT INTO airport VALUES (4, 'Kempegowda International', 'Bangalore', 'India', 'BLR');
INSERT INTO airport VALUES (5, 'Rajiv Gandhi International', 'Hyderabad', 'India', 'HYD');
INSERT INTO airport VALUES (6, 'Chennai International', 'Chennai', 'India', 'MAA');
INSERT INTO airport VALUES (7, 'Netaji Subhas Chandra Bose', 'Kolkata', 'India', 'CCU');
INSERT INTO airport VALUES (8, 'Muscat International', 'Muscat', 'Oman', 'MCT');
INSERT INTO airport VALUES (9, 'Kuala Lumpur International', 'Kuala Lumpur', 'Malaysia', 'KUL');
INSERT INTO airport VALUES (10, 'Suvarnabhumi International', 'Bangkok', 'Thailand', 'BKK');
INSERT INTO airport VALUES (11, 'Incheon International', 'Seoul', 'South Korea', 'ICN');
INSERT INTO airport VALUES (12, 'Shanghai Pudong International', 'Shanghai', 'China', 'PVG');
INSERT INTO airport VALUES (13, 'Ninoy Aquino International', 'Manila', 'Philippines', 'MNL');
INSERT INTO airport VALUES (14, 'Soekarno-Hatta International', 'Jakarta', 'Indonesia', 'CGK');
INSERT INTO airport VALUES (15, 'Zurich Airport', 'Zurich', 'Switzerland', 'ZRH');
INSERT INTO airport VALUES (16, 'Helsinki Airport', 'Helsinki', 'Finland', 'HEL');
INSERT INTO airport VALUES (17, 'Sheremetyevo International', 'Moscow', 'Russia', 'SVO');
INSERT INTO airport VALUES (18, 'Bandaranaike International', 'Colombo', 'Sri Lanka', 'CMB');

-- Aircraft Data
INSERT INTO aircraft VALUES (2, 'VT-SPJ', 160, 2);
INSERT INTO aircraft VALUES (3, 'VT-GOF', 186, 3);
INSERT INTO aircraft VALUES (4, 'VT-ASI', 200, 4);
INSERT INTO aircraft VALUES (5, '4R-ULA', 150, 5);
INSERT INTO aircraft VALUES (6, 'HB-JSS', 220, 6);
INSERT INTO aircraft VALUES (7, 'OH-FIN', 190, 7);
INSERT INTO aircraft VALUES (8, 'RA-8901', 210, 8);
INSERT INTO aircraft VALUES (9, '9M-MAL', 170, 9);
INSERT INTO aircraft VALUES (10, 'HS-TGA', 250, 10);
INSERT INTO aircraft VALUES (11, 'HL-KR1', 300, 11);
INSERT INTO aircraft VALUES (12, 'B-1234', 280, 12);
INSERT INTO aircraft VALUES (13, 'B-16701', 220, 13);
INSERT INTO aircraft VALUES (14, 'RP-C7777', 190, 14);
INSERT INTO aircraft VALUES (15, 'PK-GIA', 200, 15);
INSERT INTO aircraft VALUES (101, 'AI-3201', 180, 1);
INSERT INTO aircraft VALUES (102, '6E-4502', 220, 2);
INSERT INTO aircraft VALUES (103, 'EK-7771', 350, 3);


-- Reservation Data 
INSERT INTO reservations VALUES (1, 1, 1, '2025-09-10');
INSERT INTO reservations VALUES (2, 2, 2, '2025-09-10');
INSERT INTO reservations VALUES (3, 3, 3, '2025-09-11');
INSERT INTO reservations VALUES (4, 33, 4, '2025-09-12');
INSERT INTO reservations VALUES (5, 34, 5, '2025-09-12');
INSERT INTO reservations VALUES (6, 35, 6, '2025-09-13');
INSERT INTO reservations VALUES (7, 36, 7, '2025-09-13');
INSERT INTO reservations VALUES (8, 37, 8, '2025-09-14');
INSERT INTO reservations VALUES (9, 38, 9, '2025-09-14');
INSERT INTO reservations VALUES (10, 39, 10, '2025-09-14');
INSERT INTO reservations VALUES (11, 40, 11, '2025-09-15');
INSERT INTO reservations VALUES (12, 41, 12, '2025-09-15');
INSERT INTO reservations VALUES (13, 42, 13, '2025-09-15');
INSERT INTO reservations VALUES (14, 43, 14, '2025-09-16');
INSERT INTO reservations VALUES (15, 44, 1001, '2023-08-29');
INSERT INTO reservations VALUES (16, 45, 1002, '2023-08-30');
INSERT INTO reservations VALUES (17, 46, 5, '2025-09-17');
INSERT INTO reservations VALUES (18, 47, 6, '2025-09-17');
INSERT INTO reservations VALUES (19, 1, 2, '2025-09-10');
INSERT INTO reservations VALUES (20, 2, 3, '2025-09-17');
INSERT INTO reservations VALUES (21, 3, 5, '2025-09-16');
INSERT INTO reservations VALUES (22, 33, 5, '2025-09-18');
INSERT INTO reservations VALUES (23, 34, 6, '2025-09-18');
INSERT INTO reservations VALUES (24, 35, 7, '2025-09-18');
INSERT INTO reservations VALUES (25, 36, 10, '2025-09-19');
INSERT INTO reservations VALUES (26, 37, 10, '2025-09-20');
INSERT INTO reservations VALUES (27, 38, 5, '2025-09-21');
INSERT INTO reservations VALUES (28, 39, 6, '2025-09-22');
INSERT INTO reservations VALUES (29, 40, 6, '2025-09-15');
INSERT INTO reservations VALUES (30, 41, 7, '2025-09-15');
INSERT INTO reservations VALUES (31, 42, 14, '2025-09-20');
INSERT INTO reservations VALUES (32, 43, 14, '2025-09-22');
INSERT INTO reservations VALUES (33, 44, 12, '2025-09-15');
INSERT INTO reservations VALUES (34, 45, 12, '2025-09-21');
INSERT INTO reservations VALUES (35, 46, 10, '2025-09-22');
INSERT INTO reservations VALUES (36, 47, 3, '2025-09-21');


-- Passenger Data
INSERT INTO passenger VALUES (1, 'Rohit', 'Sharma', '1990-04-30', 'rohit.sharma@email.com', '9876543210');
INSERT INTO passenger VALUES (2, 'Anita', 'Kapoor', '1985-07-12', 'anita.kapoor@email.com', '9876501234');
INSERT INTO passenger VALUES (3, 'Mohammed', 'Ali', '1992-11-20', 'mohammed.ali@email.com', '9812345678');
INSERT INTO passenger VALUES (33, 'Arjun', 'Reddy', '1990-01-12', 'arjun.reddy@email.com', '9001001001');
INSERT INTO passenger VALUES (34, 'Meera', 'Iyer', '1993-04-05', 'meera.iyer@email.com', '9001001002');
INSERT INTO passenger VALUES (35, 'Kabir', 'Das', '1988-07-20', 'kabir.das@email.com', '9001001003');
INSERT INTO passenger VALUES (36, 'Sanya', 'Malhotra', '1995-02-15', 'sanya.malhotra@email.com', '9001001004');
INSERT INTO passenger VALUES (37, 'Aditya', 'Menon', '1992-11-30', 'aditya.menon@email.com', '9001001005');
INSERT INTO passenger VALUES (38, 'Ritika', 'Shah', '1999-09-18', 'ritika.shah@email.com', '9001001006');
INSERT INTO passenger VALUES (39, 'Varun', 'Kapoor', '1985-05-23', 'varun.kapoor@email.com', '9001001007');
INSERT INTO passenger VALUES (40, 'Pooja', 'Chopra', '1994-06-10', 'pooja.chopra@email.com', '9001001008');
INSERT INTO passenger VALUES (41, 'Nikhil', 'Bose', '1983-03-29', 'nikhil.bose@email.com', '9001001009');
INSERT INTO passenger VALUES (42, 'Ayesha', 'Syed', '1991-12-19', 'ayesha.syed@email.com', '9001001010');
INSERT INTO passenger VALUES (43, 'Rohan', 'Nair', '2000-08-02', 'rohan.nair@email.com', '9001001011');
INSERT INTO passenger VALUES (44, 'Simran', 'Gill', '1996-10-09', 'simran.gill@email.com', '9001001012');
INSERT INTO passenger VALUES (45, 'Dev', 'Khanna', '1987-07-17', 'dev.khanna@email.com', '9001001013');
INSERT INTO passenger VALUES (46, 'Tara', 'Mishra', '1994-01-14', 'tara.mishra@email.com', '9001001014');
INSERT INTO passenger VALUES (47, 'Kunal', 'Rajput', '1989-09-03', 'kunal.rajput@email.com', '9001001015');

-- Flight Data
INSERT INTO flight VALUES (1, 1, 101, 1, 2, 'On Time', '2025-09-15 08:30:00');
INSERT INTO flight VALUES (2, 2, 2, 2, 3, 'Delayed', '2025-09-15 11:00:00');
INSERT INTO flight VALUES (3, 3, 3, 3, 4, 'On Time', '2025-09-16 07:15:00');
INSERT INTO flight VALUES (4, 4, 4, 4, 5, 'On Time', '2025-09-16 09:00:00');
INSERT INTO flight VALUES (5, 5, 5, 5, 1, 'On Time', '2025-09-17 14:00:00');
INSERT INTO flight VALUES (6, 6, 6, 12, 1, 'Delayed', '2025-09-17 15:00:00');
INSERT INTO flight VALUES (7, 7, 7, 13, 12, 'On Time', '2025-09-18 09:00:00');
INSERT INTO flight VALUES (8, 8, 8, 14, 6, 'Cancelled', '2025-09-18 18:00:00');
INSERT INTO flight VALUES (9, 9, 9, 6, 7, 'On Time', '2025-09-19 07:00:00');
INSERT INTO flight VALUES (10, 10, 10, 7, 4, 'Delayed', '2025-09-19 18:00:00');
INSERT INTO flight VALUES (11, 11, 11, 11, 2, 'On Time', '2025-09-20 09:00:00');
INSERT INTO flight VALUES (12, 12, 12, 4, 7, 'Delayed', '2025-09-20 21:00:00');
INSERT INTO flight VALUES (13, 13, 13, 10, 7, 'On Time', '2025-09-21 05:00:00');
INSERT INTO flight VALUES (14, 14, 14, 15, 4, 'On Time', '2025-09-22 10:00:00');





-- =========================
-- Project Query Statements
-- =========================

-- 1. Retrieve all flights with their flight number, airline name, source, destination.
SELECT f.FlightID, f.Timings, a.Name AS AirlineName, ap1.Name AS Source, ap2.Name AS Destination
FROM flight f
JOIN airline a ON f.AirlineID = a.AirlineID
JOIN airport ap1 ON f.DepartureAirportID = ap1.AirportID
JOIN airport ap2 ON f.ArrivalAirportID = ap2.AirportID;

-- 2. Count the total number of flights scheduled for each airline.
SELECT AirlineID, COUNT(*) AS TotalFlights FROM flight GROUP BY AirlineID;

-- 3. Retrieve passenger details along with the flight they are booked on, including destination.
SELECT p.*, r.FlightID, f.ArrivalAirportID
FROM passenger p
JOIN reservations r ON p.PassengerID = r.PassengerID
JOIN flight f ON r.FlightID = f.FlightID;

-- 4. Find the flights with no bookings in the last month.
SELECT f.FlightID FROM flight f
LEFT JOIN reservations r ON f.FlightID = r.FlightID
WHERE r.FlightID IS NULL AND f.Timings BETWEEN DATE_SUB(NOW(), INTERVAL 1 MONTH) AND NOW();

-- 5. List the top 3 destinations with the highest number of passengers in the last month.
SELECT f.ArrivalAirportID, COUNT(r.PassengerID) AS PassengerCount
FROM reservations r
JOIN flight f ON r.FlightID = f.FlightID
WHERE r.BookingDate BETWEEN DATE_SUB(NOW(), INTERVAL 1 MONTH) AND NOW()
GROUP BY f.ArrivalAirportID
ORDER BY PassengerCount DESC
LIMIT 3;



