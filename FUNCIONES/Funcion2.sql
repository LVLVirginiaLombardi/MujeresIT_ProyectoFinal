CREATE DEFINER=`root`@`localhost` FUNCTION `Conteo_Mujeres_en_IT_en_tecnologia_tipo`(Tipo VARCHAR(255)) RETURNS int
    READS SQL DATA
BEGIN
	DECLARE Conteo INT;
    SET Conteo = (SELECT COUNT(FactMujeres.ID)
				FROM FactMujeres
                INNER JOIN DimTecnologias
                ON DimTecnologias.ID = FactMujeres.IDTecnologia
                WHERE DimTecnologias.tipo = Tipo);
	RETURN Conteo;
END