DECLARE
 qtd INTEGER := 0;
BEGIN
 SELECT COUNT(A.Cod_Veiculo) INTO qtd
 FROM Veiculo P INNER JOIN Modelo A
 ON (P.Cod_Modelo = A.Cod_Modelo)
 WHERE (P.Nome_Modelo = 'Fit');

END;
