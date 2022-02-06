DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Eliminar y Agregar Valores a DimCargos`(IN idcargo INT, IN seniority VARCHAR(255))
BEGIN
	SET FOREIGN_KEY_CHECKS=0;
	IF EXISTS (SELECT * FROM mujeres_it.DimCargos WHERE idcargo = ID AND seniority = seniority) THEN
		DELETE FROM mujeres_it.DimCargos
		WHERE idcargo = ID AND seniority = seniority;
    ELSE 
		INSERT INTO mujeres_it.DimCargos (seniority)
		VALUES (seniority);
    END IF;
END$$
DELIMITER ;