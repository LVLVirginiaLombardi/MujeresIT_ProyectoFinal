/* Consigna: Elige dos tablas de las presentadas en tu proyecto. Realizarás una serie de modificaciones en los 
registros, controladas por transacciones. */

#PRIMERA PARTE
/* En la primera tabla, si tiene registros, deberás eliminar algunos de ellos iniciando previamente una transacción. 
Si no tiene registros la tabla, reemplaza eliminación por inserción.
Deja en una línea siguiente, comentado la sentencia Rollback, y en una línea posterior, la sentencia Commit.
Si eliminas registros importantes, deja comentado las sentencias para re-insertarlos. */

#Comenzamos con un START TRANSACTION
START TRANSACTION;

#TABLA A ELEGIR DimCargos, REALIZAMOS LA ELIMINACIÓN DE ALGUNOS DATOS DE LA MISMA
	DELETE FROM MujeresIT.DimCargos
	WHERE ID = 2; 

	DELETE FROM MujeresIT.DimCargos
	WHERE ID = 4;

	DELETE FROM MujeresIT.DimCargos
	WHERE ID = 6;

	DELETE FROM MujeresIT.DimCargos
	WHERE ID = 8; 

	DELETE FROM MujeresIT.DimCargos
	WHERE ID = 10; 

#NOS FIJAMOS QUE ESTÉN EFECTIVAMENTE ELIMINADOS LOS DATOS CON LA SIGUIENTE SENTENCIA
	SELECT *
	FROM MujeresIT.DimCargos
	ORDER BY ID;

# HACEMOS UN ROLLBACK QUE DEJAMOS COMENTADO COMO LO PIDE LA CONSIGNA Y AL IGUAL QUE EL COMMIT
#ROLLBACK;
#COMMIT;

#################################################################################################################################################################

#SEGUNDA PARTE
/*En la segunda tabla, inserta ocho nuevos registros iniciando también una transacción. 
Agrega un savepoint a posteriori de la inserción del registro #4 y otro savepoint a posteriori del registro #8
Agrega en una línea comentada la sentencia de eliminación del savepoint de los primeros 4 registros insertados */

#Comenzamos con un START TRANSACTION
START TRANSACTION;

#TABLA A ELEGIR DimTecnologias, REALIZAMOS LA INSERCIÓN DE 8 NUEVOS REGISTROS 
	INSERT INTO MujeresIT.DimTecnologias (ID, Nombre, Tipo)
	VALUES (NULL, 'Angular', 'Web UI'), (NULL, 'NodeJS', 'Web UI'), (NULL, 'Laravel', 'Web UI'), (NULL, 'CSS', 'Web UI');
SAVEPOINT numero_cuatro;
	INSERT INTO MujeresIT.DimTecnologias (ID, Nombre, Tipo)
    VALUES (NULL, 'HTML', 'Web UI'), (NULL, 'MySQL', 'Programming'), (NULL, 'Salesforce', 'Programming'), (NULL, 'C#', 'Programming');
SAVEPOINT numero_ocho;

#HACEMOS UNA CONSULTA A LA TABLA PARA VER LOS REGISTROS
SELECT * FROM MujeresIT.DimTecnologias;

#SENTENCIA DE ELIMINACIÓN DEL SAVEPOINT DE LOS PRIMEROS 4 REGISTROS INSERTADOS
#RELEASE SAVEPOINT numero_cuatro;



