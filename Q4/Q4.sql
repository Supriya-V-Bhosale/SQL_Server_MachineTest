SELECT SerialNumber
FROM Computer_Nis1030
WHERE weight<( SELECT AVG(Weight) FROM Computer_Nis1030);