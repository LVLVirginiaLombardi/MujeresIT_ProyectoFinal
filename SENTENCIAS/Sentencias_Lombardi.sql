#CREACIÓN DE USERS
/* Creamos los users que se piden en la entrega esta vez como no es necesario se hacen sin contraseña */
CREATE USER virginia@localhost;
CREATE USER mariana@localhost;

#COMPROBAMOS QUE LOS USER FUERON CREADOS CON ÉXITO
/* Para corroborar que los users fueron creados implementamos el siguiente script */
SELECT * FROM mysql.user;

#DAR PERMISOS DE LECTURA AL USER virginia@localhost
/* Se nos pide que el primer user o sea virginia@localhost tenga sólo permisos de lectura, escribimos el siguiente script de GRANT para darle
permisos de lectura e indicamos el nombre de la base de datos que queremos que tenga los permisos. En nuestro caso será la BBDD MujeresIT */
GRANT SELECT ON MujeresIT.* TO virginia@localhost;

#MOSTRAR LOS PRIVILEGIOS PARA EL USER virginia@localhost
/* Con este script verificamos que efectivamente los permisos que se le dan a virginia@localhost son de lectura */
SHOW GRANTS FOR virginia@localhost;

#DAR PERMISOS DE LECTURA, INSERCIÓN Y MODIFICACIÓN AL USER mariana@localhost
/* Se nos pide dar al segundo user mariana@localhost, permisos de lectura, inserción y modificación, por lo que escribimos el siguiente script
de GRANT para darle dichos permisos, indicando siempre el nombre de la base de datos que queremos que tenga los permisos. 
En nuestro caso será la BBDD MujeresIT */
GRANT SELECT, INSERT, UPDATE ON MujeresIT.* TO mariana@localhost;

#MOSTRAR LOS PRIVILEGIOS PARA EL SEGUNDO USER mariana@localhost;
/* Con este script verificamos que efectivamente los permisos que se le dan a mariana@localhost; son de lectura, inserción y modificación */
SHOW GRANTS FOR mariana@localhost;

# Ninguno de ellos podrá eliminar registros de ninguna tabla.
/* Creamos un script de REVOKE para ambos users así no podrán eliminar en ningún caso ningún dato de la BBDD MujeresIT */
#PARA EL PRIMER USER
REVOKE DELETE ON MujeresIT.* FROM virginia@localhost;
#PARA EL SEGUNDO USER
REVOKE DELETE ON MujeresIT.* FROM mariana@localhost;

