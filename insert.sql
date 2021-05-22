Insert into Marca values(1, 'Honda');
Insert into Marca values(100, 'Fit');

SELECT COUNT(Cod_Modelo) 
FROM Modelo
WHERE (Cod_Marca = 1);

SELECT M.Cod_Modelo, C.Cod_Marca
FROM Modelo M INNER JOIN Marca C
ON (M.Cod_Marca = C.Cod_Marca);
