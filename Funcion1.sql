CREATE DEFINER=`root`@`localhost` FUNCTION `Conteo_Mujeres_en_IT_entre_periodos`(FechaIni DATE, FechaFin DATE) RETURNS int
    READS SQL DATA
BEGIN
	DECLARE Total INT;
        SET Total = (SELECT COUNT(IDMujerIt)
        FROM vista_traer_fecha
        WHERE Fecha BETWEEN FechaIni AND FechaFin);
	RETURN Total;
END