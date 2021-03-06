#CREATION OF SCHEMA mujeres_it and Use of it.
CREATE SCHEMA IF NOT EXISTS mujeres_it;

USE mujeres_it;


#################################################################################################################################################################


# CREATION OF TABLES OF 5 TABLES FOR THIS BBDD -> mujeres_it.

/* Creation of Table DimCargos. */
CREATE TABLE IF NOT EXISTS DimCargos(
								  ID INT UNIQUE NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                  Seniority VARCHAR(255) NOT NULL);

/* Creation of Table DimTecnologias. */
CREATE TABLE IF NOT EXISTS DimTecnologias(
									   ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                       Nombre VARCHAR(255) NOT NULL,
                                       Tipo VARCHAR(255) NOT NULL);

/* Creation of Table FactMujeres. */                                       
CREATE TABLE IF NOT EXISTS FactMujeres(
								   ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                   Nombre VARCHAR(255) NOT NULL,
                                   Apellido VARCHAR(255) NOT NULL,
                                   DNI INT NOT NULL,
                                   Profesion VARCHAR(255),
                                   IDCargo INT NOT NULL,
                                   IDTecnologia INT NOT NULL,
                                   FOREIGN KEY (IDCargo) REFERENCES DimCargos(ID),
                                   FOREIGN KEY (IDTecnologia) REFERENCES DimTecnologias(ID));

/* Creation of Table FactEmpresas. */
CREATE TABLE IF NOT EXISTS FactEmpresas(
									ID INT UNIQUE NOT NULL PRIMARY KEY,
                                    Nombre VARCHAR(255) NOT NULL,
                                    Tipo VARCHAR(255),
                                    IDMujer INT NOT NULL,
                                    IDCargo INT NOT NULL,
                                    FOREIGN KEY (IDMujer) REFERENCES FactMujeres(ID),
                                    FOREIGN KEY (IDCargo) REFERENCES DimCargos(ID));

/* Creation of Table FactPeriodos. */
CREATE TABLE IF NOT EXISTS FactPeriodos(
									ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                    Dia INT NOT NULL,
                                    Mes INT NOT NULL,
                                    Anio INT NOT NULL,
                                    IDEmpresa INT NOT NULL,
                                    IDMujerIt INT NOT NULL,
                                    FOREIGN KEY (IDEmpresa) REFERENCES FactEmpresas(ID),
                                    FOREIGN KEY (IDMujerIt) REFERENCES FactMujeres(ID));
                                    

#################################################################################################################################################################


#POPULATION OF THE TABLES, WITH 10 RECORDS PER EACH TABLE 

/* Population of the Table mujeres_it.DimCargos. */                                  
INSERT INTO mujeres_it.DimCargos (ID, Seniority)
VALUES (NULL,'Trainee'), (NULL, 'Junior'), (NULL, 'Junior Advanced'), (NULL, 'Semi Senior'), (NULL, 'Senior'), 
(NULL, 'Senior Advanced'), (NULL, 'Senior Level One'), (NULL, 'Senior Level Two'), (NULL, 'Senior Level Three'), (NULL, 'Senior Level Four');

/* Population of the mujeres_it.DimTecnologias. */
INSERT INTO mujeres_it.DimTecnologias (ID, Nombre, Tipo)
VALUES (NULL, 'iOS', 'Mobile'), (NULL, 'Android', 'Mobile'), (NULL, 'React', 'Web UI'), (NULL, 'MongoDB', 'Web UI'), (NULL, 'VUE JS', 'Web UI'), 
(NULL, 'JavaScript', 'Web UI'), (NULL, 'Java', 'Programming'), (NULL, 'C++', 'Programming'), (NULL, 'Python', 'Programming'), (NULL, 'C', 'Programming');

/* Population of the mujeres_it.FactMujeres. */
INSERT INTO mujeres_it.FactMujeres (ID, Nombre, Apellido, DNI, Profesion, IDCargo, IDTecnologia)
VALUES (NULL, 'Virginia', 'Lombardi', 46288064, 'iOS Developer', 1, 1), (NULL, 'Lucia', 'Perez', 54568907, 'Systems Engineering', 5, 4), 
(NULL, 'Mariana', 'Orman', 33458065, 'iOS Developer', 8, 1), (NULL, 'Lorena', 'Alvarez', 56789073, 'Java Developer', 2, 7),
(NULL, 'Alicia', 'Gonzalez', 45678753, 'Python Developer', 3, 9), (NULL, 'Martina', 'Bernardi', 56873219, 'Android Developer', 4, 2),
(NULL, 'Isabel', 'Vayra', 34623786, 'Web UI Developer', 6, 3), (NULL, 'Micaela', 'Nelson', 56784325, 'Web UI Developer', 7, 5),
(NULL, 'Susana', 'Mori', 34868063, 'C Developer', 10, 10), (NULL, 'Natalia', 'Bonjour', 65433456, 'C++ Developer', 9, 8);

/* Population of the mujeres_it.FactEmpresas. */
INSERT INTO mujeres_it.FactEmpresas (ID, Nombre, Tipo, IDMujer, IDCargo)
VALUES (123, 'Globant', 'Global Company', 1, 1), (124, 'TCS', 'Global Company', 2, 5), (125, 'Sabre', 'Global Company', 3, 5), 
(126, 'd-Local', 'Global Company', 4, 2), (127, 'Overactive', 'Global Company', 5, 3), (128, 'Wabbi', 'Start Up', 6, 4),
(129, 'Tienda Inglesa', 'Global Company', 7, 6), (200, 'Nimacloud', 'Start Up', 8, 7), (201, 'Mercado Libre', 'Start Up', 9, 10),
(202, 'SparkDigital', 'Start Up', 10, 9);

/* Population of the mujeres_it.FactPeriodos. */
INSERT INTO mujeres_it.FactPeriodos (ID, Dia, Mes, Anio, IDEmpresa, IDMujerIt)
VALUES (NULL, 18, 1, 2021, 123, 10), (NULL, 20, 2, 2019, 125, 2), (NULL, 23, 12, 2020, 127, 4), (NULL, 31, 10, 2010, 129, 6), (NULL, 12, 8, 2015, 201, 8),
(NULL, 11 ,7 ,2021 ,202 ,3), (NULL, 21, 6, 2021, 124, 5), (NULL, 29, 3, 2013, 126, 7), (NULL, 1, 4, 2014, 128, 9), (NULL, 10, 5, 2016, 200, 1);



