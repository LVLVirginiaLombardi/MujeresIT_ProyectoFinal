CREATE DEFINER=`root`@`localhost` PROCEDURE `Eliminar y Agregar Valores a DimCargos`(IN idcargo INT, IN seniority VARCHAR(255))
BEGIN
	IF EXISTS (SELECT * FROM MujeresIT.DimCargos WHERE idcargo = ID AND seniority = seniority) THEN
		DELETE FROM MujeresIT.DimCargos
		WHERE idcargo = ID AND seniority = seniority;
    ELSE 
		INSERT INTO MujeresIT.DimCargos (seniority)
		VALUES (seniority);
    END IF;
END