DELIMITER $$
CREATE FUNCTION `Mujer_IT_Conoce_Tecnologia` (Nombre VARCHAR(255)) 
RETURNS VARCHAR(255)
DETERMINISTIC
BEGIN
	DECLARE Resultado VARCHAR(255);
		SET Resultado = (SELECT T.Nombre
        FROM DimTecnologias AS T
        INNER JOIN FactMujeres AS M
        ON T.ID = M.IDTecnologia
        WHERE M.Nombre = Nombre);
	RETURN Resultado;
END$$
DELIMITER ;

