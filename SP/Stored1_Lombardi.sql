CREATE DEFINER=`root`@`localhost` PROCEDURE `Ordenamiento sobre Tabla FactMujeres`(IN campo VARCHAR(255), IN tipo_ordenamiento ENUM('ASC', 'DESC'))
BEGIN
#VALIDACIÓN CAMPO, SI EL USUARIO INGRESA ALGO QUE ORDENE, SI NO QUE LO DEJE VACÍO
	IF campo <> '' THEN
		SET @ordenar = CONCAT('ORDER BY ', campo);
	ELSE
		SET @ordenar = '';
	END IF;
# VALIDACIÓN TIPO_ORDENAMIENTO, SI EL USUARIO INGRESA ALGO QUE LO ORDENE POR ASC O DESC, SI NO QUE QUEDE VACÍO
	IF tipo_ordenamiento <> '' THEN
		SET @tipo = CONCAT(' ', tipo_ordenamiento);
	ELSE
		SET @tipo = '';
	END IF;
#SETEO DE LA TABLA A ORDENAR, Y PROCEDIMIENTOS NECESARIOS PARA QUE SE EJECUTE EL SP.
	SET @clausula = CONCAT('SELECT * FROM mujeres_it.FactMujeres ', @ordenar, @tipo);
    PREPARE ejecutarSQL FROM @clausula;
    EXECUTE ejecutarSQL;
    DEALLOCATE PREPARE ejecutarSQL;
END