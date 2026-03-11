CREATE DATABASE Sports;

USE Sports;

CREATE TABLE ACTIVITY(
    ACODE INTEGER PRIMARY KEY,
    ActivityName VARCHAR(50),
    ParticipatnsNum INTEGER,
    PrizeMoney INTEGER
);

INSERT INTO ACTIVITY(ACODE, ActivityName, ParticipatnsNum, PrizeMoney) VALUES
(1001, 'Relay 100x4', 16, 10000),
(1002, 'High Jump', 10, 12000),
(1003, 'Shot Putt', 12, 8000),
(1005, 'Long Jump', 12, 9000),
(1008, 'Discus Throw', 10, 15000);

