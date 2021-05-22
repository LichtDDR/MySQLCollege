CREATE OR REPLACE PROCEDURE Insere_Veiculo
(vcodveiculo IN INTEGER,
vplaca IN INTEGER,
vdiposnibilidade IN VARCHAR,
vnome IN VARCHAR),
IS
vcodVeiculo INTEGER;
vcodPlaca INTEGER;
vdispo VARCHAR;
vnomeVei VARCHAR;
BEGIN
 SELECT Cod_Veic INTO vcodVeiculo
 FROM Veiculo
 WHERE (Cod_Veic = vcodvei);
 
 SELECT Placa_Veiculo INTO vcodPlaca
 FROM Veiculo
 WHERE (Placa_Veiculo = vplaca);
 
 SELECT Disponibilidade INTO vdispo
 FROM Veiculo
 WHERE (Disponibilidade = vdispo);
 
 SELECT Nome_Veic INTO vnomeVei
 FROM Veiculo
 WHERE (Nome_Veiculo = vnomeVei);
INSERT
INTO Veiculo (Cod_Veic, Placa_Veiculo, Disponibilidade, Nome_Veiculo)
VALUES (vcodVeiculo, vcodPlaca, vdispo, vnomeVei);
END Insere_Veiculo;
