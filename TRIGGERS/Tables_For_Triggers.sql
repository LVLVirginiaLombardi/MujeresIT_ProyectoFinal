/*En la base de datos de tu proyecto final, debes incluir al menos dos tablas del tipo LOG, Bitácora o Movimientos. 
Elegir dos de las tablas más importantes donde se operan con registros de forma frecuente, y crearás dos Triggers en cada una de ellas.*/

SELECT DATABASE();
SELECT VERSION();

#PRIMERAS DOS TABLAS
/* Se crea Tabla MujeresIT.adiciones_mujeres_general.
Se selecciona la Tabla `FactMujeres`. */
CREATE TABLE MujeresIT.adiciones_mujeres_general(
	ID_adicion INT AUTO_INCREMENT PRIMARY KEY,
    Fecha DATE NOT NULL,
    Hora TIME NOT NULL,
    Usuario_ID VARCHAR(255) NOT NULL,
    ID INT,
    Nombre VARCHAR(255),
    Apellido VARCHAR(255),
    Profesion VARCHAR(255),
    Tipo_operacion VARCHAR(255));

/* Se crea Tabla MujeresIT.eliminaciones_mujeres_general.
Se selecciona la Tabla `FactMujeres`. */
CREATE TABLE MujeresIT.eliminaciones_mujeres_general(
	ID_eliminacion INT AUTO_INCREMENT PRIMARY KEY,
    Fecha DATE NOT NULL,
    Hora TIME NOT NULL,
    Usuario_ID VARCHAR(255) NOT NULL,
    ID INT,
    Nombre VARCHAR(255),
    Apellido VARCHAR(255),
    Profesion VARCHAR(255),
    Tipo_operacion VARCHAR(255));


###############################################################################

#SEGUNDAS DOS TABLAS
/* Se crea MujeresIT.eliminaciones_tecnologias_general.
Se selecciona la Tabla `DimTecnologias`. */
CREATE TABLE MujeresIT.eliminaciones_tecnologias_general(
	ID_eliminacion INT AUTO_INCREMENT PRIMARY KEY,
    Fecha DATE NOT NULL,
    Hora TIME NOT NULL,
    Usuario_ID VARCHAR(255) NOT NULL,
    ID INT,
    Nombre VARCHAR(255),
    Tipo VARCHAR(255),
    Tipo_operacion VARCHAR(255));

/* Se crea MujeresIT.agregaciones_tecnologias_general.
Se selecciona la Tabla `DimTecnologias`. */
CREATE TABLE MujeresIT.agregaciones_tecnologias_general(
	ID_eliminacion INT AUTO_INCREMENT PRIMARY KEY,
    Fecha DATE NOT NULL,
    Hora TIME NOT NULL,
    Usuario_ID VARCHAR(255) NOT NULL,
    ID INT,
    Nombre VARCHAR(255),
    Tipo VARCHAR(255),
    Tipo_operacion VARCHAR(255));