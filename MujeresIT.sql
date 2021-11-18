CREATE SCHEMA IF NOT EXISTS MujeresIT;
USE MujeresIT;

CREATE TABLE IF NOT EXISTS DimCargos(
								  ID INT UNIQUE NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                  Seniority VARCHAR(255) NOT NULL);

CREATE TABLE IF NOT EXISTS DimTecnologias(
									   ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                       Nombre VARCHAR(255) NOT NULL,
                                       Tipo VARCHAR(255) NOT NULL);
                                       
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
                                   
CREATE TABLE IF NOT EXISTS FactEmpresas(
									ID INT UNIQUE NOT NULL PRIMARY KEY,
                                    Nombre VARCHAR(255) NOT NULL,
                                    Tipo VARCHAR(255),
                                    IDMujer INT NOT NULL,
                                    IDCargo INT NOT NULL,
                                    FOREIGN KEY (IDMujer) REFERENCES FactMujeres(ID),
                                    FOREIGN KEY (IDCargo) REFERENCES DimCargos(ID));

CREATE TABLE IF NOT EXISTS FactPeriodos(
									ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                    Dia INT NOT NULL,
                                    Mes INT NOT NULL,
                                    Anio INT NOT NULL,
                                    IDEmpresa INT NOT NULL,
                                    IDMujerIt INT NOT NULL,
                                    FOREIGN KEY (IDEmpresa) REFERENCES FactEmpresas(ID),
                                    FOREIGN KEY (IDMujerIt) REFERENCES FactMujeres(ID));
