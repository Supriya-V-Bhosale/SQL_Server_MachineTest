/*
Write a Stored Procedure to accept EmployeeId as parameter and
List the serial number, manufacturer name, model, and weight of
computer that belong to the specified Employeeid.
*/

CREATE PROCEDURE sp_INFO
AS
BEGIN
	SELECT e.EmployeeId,c.SerialNumber,m.MfName,c.Model,c.Weight
	FROM Employee_NIS1030 e
	JOIN COMPUTER_NIS1030 c
	ON e.EmployeeId=c.EmployeeId
	JOIN Manufacturer_NIS1030 m
	ON c.MfName=m.MfName
	WHERE e.EmployeeId='ID1001'
END

EXEC sp_INFO