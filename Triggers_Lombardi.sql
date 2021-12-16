/*Los Triggers a crear deberán controlar la acción previo a la operación elegida (BEFORE), 
y una acción posterior a otra operación elegida (AFTER).*/

USE MujeresIT;

#FIRST TRIGGER:
/*Este script lo que hace es crear un trigger llamado Aft_Ins_MujerIt,
lo que hace es que después de la inserción en la tabla FactMujeres se va a aplicar
por cada fila insertar en la tabla adiciones_mujeres_general (creada en Tables_For_Triggers) 
los datos pasados: Fecha, Hora Usuario_ID, ID, Nombre, Apellido, Profesion y Tipo_operacion.
Y en VALUES le pasamos los valores que vamos a insertar en dicha tabla.*/
CREATE TRIGGER `Aft_Ins_MujerIt`
AFTER INSERT ON `FactMujeres` FOR EACH ROW
INSERT INTO `adiciones_mujeres_general` (Fecha, Hora, Usuario_ID, ID, Nombre, Apellido, Profesion, Tipo_operacion)
VALUES(CURRENT_DATE(), CURRENT_TIME(), USER(), NEW.ID, NEW.Nombre, NEW.Apellido, NEW.Profesion, 'INSERT');

#INSERTAMOS VALORES EN LA TABLA FactMujeres
INSERT INTO MujeresIT.FactMujeres (Nombre, Apellido, DNI, Profesion, IDCargo, IDTecnologia)
VALUES('Siri', 'Altez', 43211285, 'iOS Developer', 2, 1);
USE MujeresIT;


#SECOND TRIGGER
/*Este script lo que hace es crear un trigger llamado Bef_Del_Tecnologia,
lo que hace es que antes de la eliminación en la tabla DimTecnologias se va a aplicar
por cada fila insertar en la tabla eliminaciones_tecnologias_general (creada en Tables_For_Triggers)
los datos pasados: Fecha Hora Usuario_ID, ID, Nombre Tipo y Tipo_operacion.alter
Y en VALUES le pasamos los valores que vamos a insertar en dicha tabla.*/
CREATE TRIGGER `Bef_Del_Tecnologia`
BEFORE DELETE ON `DimTecnologias` FOR EACH ROW
INSERT INTO `eliminaciones_tecnologias_general` (Fecha, Hora, Usuario_ID, ID, Nombre, Tipo, Tipo_operacion)
VALUES(CURRENT_DATE(), CURRENT_TIME(), USER(), OLD.ID, OLD.Nombre, OLD.Tipo, 'DELETE');

#USAMOS ESTO PARA NO OBTENER PROBLEMAS CON LA ELIMINACIÓN DEL ID
SET FOREIGN_KEY_CHECKS=0;
#BORRAMOS UNA FILA DE LA TABLA DimTecnologias DONDE EL ID ES DOS
DELETE FROM MujeresIT.DimTecnologias
WHERE ID = 2;