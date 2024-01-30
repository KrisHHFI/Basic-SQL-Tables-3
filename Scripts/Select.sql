/* Some statements which return different table queries */
-- Returns all the companies
SELECT *
FROM Company
ORDER by CompanyName

-- Returns all the floors
SELECT *
FROM Floor
ORDER by FloorNumber

-- Returns all the tenants
SELECT *
FROM Tenant
ORDER by FloorNumber

-- Returns all the employees
SELECT *
FROM Employee
ORDER by EmployeeID

-- Returns the companies which contain a "z"
SELECT *
FROM Company
WHERE CompanyName LIKE '%z%'
ORDER by CompanyName

-- Returns the companies on floor 5
SELECT *
FROM Tenant
WHERE FloorNumber = 5
ORDER by CompanyName

-- Returns the companies on floors 3 to 5
SELECT *
FROM Tenant
WHERE FloorNumber  BETWEEN 3 AND 5
ORDER by FloorNumber