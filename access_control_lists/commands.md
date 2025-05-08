**Verificar ACLs** `getfacl archivo.txt` (getfacl <archivo>)
**Modificar Máscara ACL** `setfacl -m m:rwx archivo.txt`
**Asignar Permisos Específicos ACL a un Usuario en un Archivo** `setfacl -m u:usuario:r reporte.txt` (reporte.txt es el archivo)
**Asignar Permisos Específicos ACL a un Grupo en un Directorio** `setfacl -d -m g:grupo:rw proyectos` (proyectos es el directorio)
**Eliminar Permisos Específicos ACL de un Usuario en un Archivo** `setfacl -x u:usuario archivo.txt`