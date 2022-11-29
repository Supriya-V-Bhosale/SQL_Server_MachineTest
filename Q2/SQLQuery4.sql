--Calculate the average weight of the computers in use.
SELECT AVG(Weight) AS[Average weight]
FROM Computer_Nis1030
WHERE EmployeeID IS NOT NULL;
