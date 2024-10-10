CREATE DATABASE udt;

use udt;
CREATE TABLE UDT (
    ID INTEGER PRIMARY KEY,
    Age SMALLINT,
    Population BIGINT,
    Salary DECIMAL(12, 2), 
    Rating FLOAT,
    Name CHAR(50),
    Description VARCHAR(255),
    BirthDate DATE,
    AppointmentTime TIME,
    LastUpdated DATETIME,
    LogTimestamp TIMESTAMP,
    IsActive BOOLEAN,
    PriceInRupiah DECIMAL(10, 2)
);
