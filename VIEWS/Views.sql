#CREATION OF VIEWS

#FIRST VIEW
/* Creation of the view vista_profesion_mujeresit. This view shows information of the Name, the Last Name,
the Profession and the Seniority of each MujereIt in the data base.
This view was created with the intention of showing the relevant information of the MujerIt on her work. */
CREATE VIEW 
vista_profesion_mujeresit
AS SELECT 
FactMujeres.nombre,
FactMujeres.apellido,
FactMujeres.profesion,
DimCargos.seniority
FROM
MujeresIT.DimCargos,
MujeresIT.FactMujeres
WHERE
FactMujeres.IDCargo = DimCargos.ID;


#SECOND VIEW
/* Creation of the view vista_ingreso_mujeresit_en_empresait. This view shows information of the Name, the Last Name of the MujerIt. 
Also shows the day, the month and the year in which each MujerIt joined the company.
And finally the company where she is working at. 
This view was created with the intention of showing the MujerIt's entry into the company where she currently works at. */
CREATE VIEW 
vista_ingreso_mujeresit_en_empresait
AS SELECT
FactMujeres.nombre AS Nombre_Mujer_IT,
FactMujeres.apellido AS Apellido,
FactPeriodos.dia AS Dia,
FactPeriodos.mes AS Mes,
FactPeriodos.anio AS Anio,
FactEmpresas.nombre AS Empresa
FROM
MujeresIT.FactMujeres,
MujeresIT.FactPeriodos,
MujeresIT.FactEmpresas
WHERE
FactPeriodos.IDMujerIT = FactMujeres.ID
AND FactEmpresas.IDMujer = FactMujeres.ID
ORDER BY anio DESC;


#THIRD VIEW
/* Creation of the view vista_mujeresit_trabajan_empresa. This view shows information of the Name, the Last Name of the MujerIt. 
Also shows the Profession, the Company and the type of Company where she is working at. 
This view was created with the intention of showing not only what they do within the company, 
but also in which company they work and the type of company in which they work.*/
CREATE VIEW 
vista_mujeresit_trabajan_empresa
AS SELECT
FactMujeres.nombre AS Nombre,
FactMujeres.apellido AS Apellido,
FactMujeres.profesion AS Profesion,
FactEmpresas.nombre AS Empresa,
FactEmpresas.tipo AS Tipo_Empresa
FROM
MujeresIT.FactMujeres,
MujeresIT.FactEmpresas
WHERE
FactEmpresas.IDMujer = FactMujeres.ID;


#FOURTH VIEW
/* Creation of the view vista_mujeresit_saben_tecnologias. This view shows information of the Name, the Last Name of the MujerIt. 
Also shows the Technology and the type of Technology she is capable in and know.
This view was created with the intention of showing which technologies are handled by the MujerIt and what type they are. */
CREATE VIEW
vista_mujeresit_saben_tecnologias
AS SELECT
FactMujeres.nombre AS Nombre,
FactMujeres.apellido AS Apellido,
DimTecnologias.nombre AS Tencologia,
DimTecnologias.tipo AS Tipo_Tecnologia
FROM
MujeresIT.DimTecnologias,
MujeresIT.FactMujeres
WHERE
FactMujeres.IDTecnologia = DimTecnologias.ID;


#FIFTH VIEW
/* Creation of the view vista_profesion_tecnologia_iOS_de_mujeresit. This view shows information of the Name, the Last Name of the MujerIt. 
Also shows the Profession of the MujerIt and the Technology she works at. With the exception that only is going to show
the MujerIt that works on the technology iOS.
This view was created with the intention of filtering MujerIt working on the technology named 'iOS' and siplay that information. */
CREATE VIEW
vista_profesion_tecnologia_iOS_de_mujeresit
AS SELECT
FactMujeres.nombre AS Nombre,
FactMujeres.apellido AS Apellido,
FactMujeres.profesion AS Profesion,
DimTecnologias.nombre AS Tecnologia
FROM
MujeresIT.DimTecnologias,
MujeresIT.FactMujeres
WHERE
FactMujeres.IDTecnologia = DimTecnologias.ID
AND DimTecnologias.nombre = 'iOS';

