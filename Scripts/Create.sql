/* Statements which create the tables */
-- Create the tables
CREATE TABLE Company (
	CompanyName varchar(40),
	PRIMARY KEY (CompanyName)
);

CREATE TABLE Floor (
    FloorNumber int,
    PRIMARY KEY (FloorNumber)
);

CREATE TABLE Tenant (
    FloorNumber int,
    CompanyName varchar(40),
    PRIMARY KEY (FloorNumber, CompanyName),
    FOREIGN KEY (FloorNumber) REFERENCES Floor(FloorNumber),
    FOREIGN KEY (CompanyName) REFERENCES Company(CompanyName)
);

CREATE TABLE Employee (
    EmployeeID int,
    FirstName varchar(40),
    LastName varchar(40),
    CompanyName varchar(40),
    PRIMARY KEY (EmployeeID),
    FOREIGN KEY (CompanyName) REFERENCES Tenant(CompanyName)
);