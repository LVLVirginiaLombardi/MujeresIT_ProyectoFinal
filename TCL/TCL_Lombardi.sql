/* Consigna: Elige dos tablas de las presentadas en tu proyecto. Realizarás una serie de modificaciones en los 
registros, controladas por transacciones. */


/* En la primera tabla, si tiene registros, deberás eliminar algunos de ellos iniciando previamente una transacción. 
Si no tiene registros la tabla, reemplaza eliminación por inserción.
Deja en una línea siguiente, comentado la sentencia Rollback, y en una línea posterior, la sentencia Commit.
Si eliminas registros importantes, deja comenzado las sentencias para re-insertarlos. */

#Comenzamos con un START TRANSACTION, para poder revertir los cambios que se puedan hacer.
START TRANSACTION;

#TABLA A ELEGIR DIMCARGOS, REALIZAMOS LA ELIMINACIÓN DE ALGUNOS DATOS DE LA MISMA


