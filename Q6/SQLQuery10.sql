/*
Create a VIEW with the list of employee name, their computer serial
number, and the city that they were manufactured in. Use a join.
*/
CREATE VIEW VW_LIST
AS
SELECT E.EmpName AS EmployeeName,c.SerialNumber AS [Computer Serial],e.Phone AS Number,m.City
FROM Employee_Nis1030 e
join Computer_Nis1030 c
ON E.EmployeeID=C.EmployeeID
join Manufacturer_Nis1030 m
ON c.MfName=m.MfName;

SELECT * FROM VW_LIST;