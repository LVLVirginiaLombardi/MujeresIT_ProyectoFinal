#CREACIÓN DE USERS

/* Creamos los users que se piden en la entrega esta vez como no es necesario se hacen sin contraseña. */
CREATE USER virginia@localhost;
CREATE USER mariana@localhost;

#COMPROBAMOS QUE LOS USER FUERON CREADOS CON ÉXITO
/* Para corroborar que los users fueron creados implementamos la siguiente sentencia. */
SELECT * FROM mysql.user;

###########################################################

#DAR PERMISOS DE LECTURA AL USER virginia@localhost
/* Se nos pide que el primer user o sea virginia@localhost tenga sólo permisos de lectura, escribimos la siguiente sentencia de GRANT para darle
permisos de lectura e indicamos el nombre de la base de datos que queremos que tenga los permisos. En nuestro caso será la BBDD mujeres_it. */
GRANT SELECT ON mujeres_it.* TO virginia@localhost;

#MOSTRAR LOS PRIVILEGIOS PARA EL USER virginia@localhost
/* Con esta sentencia verificamos que efectivamente los permisos que se le dan a virginia@localhost son de lectura. */
SHOW GRANTS FOR virginia@localhost;

###########################################################

#DAR PERMISOS DE LECTURA, INSERCIÓN Y MODIFICACIÓN AL USER mariana@localhost
/* Se nos pide dar al segundo user mariana@localhost, permisos de lectura, inserción y modificación, por lo que escribimos la siguiente sentencia
de GRANT para darle dichos permisos, indicando siempre el nombre de la base de datos que queremos que tenga los permisos. 
En nuestro caso será la BBDD mujeres_it. */
GRANT SELECT, INSERT, UPDATE ON mujeres_it.* TO mariana@localhost;

#MOSTRAR LOS PRIVILEGIOS PARA EL SEGUNDO USER mariana@localhost;
/* Con este script verificamos que efectivamente los permisos que se le dan a mariana@localhost; son de lectura, inserción y modificación. */
SHOW GRANTS FOR mariana@localhost;

###########################################################

# Ninguno de ellos podrá eliminar registros de ninguna tabla.
/* Creamos una sentencia de REVOKE para ambos users así no podrán eliminar en ningún caso ningún dato de la BBDD mujeres_it.
Esto es simplemente para asegurarnos de que no puedan eliminar nada. (A modo de prueba) */

#PARA EL PRIMER USER
REVOKE DELETE ON mujeres_it.* FROM virginia@localhost;

#PARA EL SEGUNDO USER
REVOKE DELETE ON mujeres_it.* FROM mariana@localhost;