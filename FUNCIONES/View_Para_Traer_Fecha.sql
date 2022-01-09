#CREATION OF THE VIEW TO BRING THE COMPLETE DATE TO THE FUNCTION Conteo_Mujeres_en_IT_entre_periodos:
CREATE VIEW 
vista_traer_fecha
AS SELECT CAST(CONCAT(Anio, '-', Mes, '-', Dia) AS DATE) AS Fecha,
IDMujerIt
FROM 
MujeresIT.FactPeriodos;  