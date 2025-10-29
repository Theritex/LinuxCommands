# Access Control Lists

Las Listas de Control de Acceso (ACLs, por sus siglas en inglés) permiten establecer permisos avanzados para archivos y directorios en sistemas de archivos compatibles. A diferencia de los permisos tradicionales de UNIX (propietario, grupo y otros), las ACLs permiten definir permisos para múltiples usuarios y grupos adicionales, proporcionando un control más granular sobre quién puede acceder y modificar los archivos.

Estas mismas permiten a los administradores especificar permisos específicos para usuarios o grupos particulares, además de los permisos estándar. Esto significa que puedes otorgar acceso a un archivo o directorio a un usuario sin cambiar el propietario o los permisos tradicionales.

En RHEL 9, las ACLs se implementan en sistemas de archivos como ext4 y XFS. Para que un archivo o directorio tenga permisos basados en ACL, el sistema debe soportarlas y estar habilitadas.

| Tipo de entrada | Etiqueta de permisos | Forma en texto |
|----------|----------|----------|
| Owner (dueño) | ACL_USER_OBJ | `user::rwx` ó `u::rwx` |
| Named user (usuario nombrado) | ACL_USER | `user::name:rwx` ó `u:name:rwx` |
| Owning group (grupo dueño) * | ACL_GROUP-OBJ | `group::rwx` ó `g:rwx` |
|Named group (grupo nombrado) | ACL_GROUP | `group:name:rwx` ó `g:name:rwx` |
| Mask (máscara) | ACL_MASK | `mask::rwx` ó `m::rwx` |
| Others (otros)* | ACL_OTHER | `other::rwx` ó `o::rwx` |

Las mascara de ACL evita que a un usuario o grupo nominal se le den mas permisos de los que deberían tener, pues el limite efectivo solo permiso es el establecido en la máscara de ACL.

Para verificar la máscara ACL es necesario ejecutar el siguiente comando:
`getfacl <archivo>`