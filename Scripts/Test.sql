/* Some tests to practice different actions */
-- Moves "Company Z" from floor 4 to 5
DELETE FROM Tenant
WHERE FloorNumber = 4
AND CompanyName = 'Company Z';

INSERT INTO Tenant (FloorNumber, CompanyName)
VALUES (5, 'Company Z');

SELECT *
FROM Tenant
WHERE CompanyName LIKE '%z%'

-- Delete all tenants from the fifth floor
DELETE FROM Tenant
WHERE FloorNumber = 5

SELECT *
FROM Tenant
WHERE FloorNumber = 5

-- Adds a company that does not exist as a tenant (intended to fail)
INSERT INTO Tenant (FloorNumber, CompanyName)
VALUES 	(4, 'Company Fail');

-- Adds a employee to a company which does not exist (intended to fail)
INSERT INTO Employee (EmployeeID, FirstName, LastName, CompanyName)
VALUES (99, 'John', 'Doe', 'Company FAIL');