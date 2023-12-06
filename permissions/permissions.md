```
#--------------------------------#--------------------------------------------------------------------------------------------------------------------------------------------------------#--------------------#
|   COMANDO                      | DESCRIPCIÓN                                                                                                                                            | EJEMPLO            |
#--------------------------------#--------------------------------------------------------------------------------------------------------------------------------------------------------#--------------------#
.
├── sudo                         §;Permitir ejecutar comandos como superusuario u otro usuario
│   ├── apt                      §;Permitir instalar, actualizar y desinstalar software en el sistema
│   ├── apt-get                  §;Permitir instalar, actualizar y desinstalar software en el sistema (actualmente en desuso)
│   ├── su                       §;Permanencia como superusuario
│   ├── -l / --login <usuario>   §;Acceder como otro usuario
│   ├── -L                       §;Bloquea el entorno del shell de inicio de sesión, evitando cambios en la información de autenticación durante su ejecución
│   ├── -V                       §;Mostrar versión de sudo y opciones de configuración compiladas en el binario
│   ├── -e / --edit              §;Editar ficheros como superusuario
│   ├── -u / --user <usuario>    §;Ejecutar comandos en nombre de otro usuario
│   └── -i                       §;Simula una sesión de inicio de sesión completa, estableciendo variables de entorno según las configuraciones del usuario al que se está cambiando
├── chmod                        §;Establecer permisos
│   ├── +x                       §;Establecer permisos de ejecución
│   ├── -x                       §;Revocar permisos de ejecución
│   ├── u+s                      §;Establecer el bit de SUID (Set User ID) en un fichero
│   ├── g+s                      §;Establecer el SGID en un directorio
│   ├── +t                       §;Establecer el sticky bit en un directorio para todos, solo el propietario puede aplicar cambios en el directorio
│   ├── -f                       §;Silenciar salida de chmod, suprimiendo mensajes de error
│   ├── -v / --verbos            §;Mostrar mensajes detallados sobre los cambios realizados por chmod
│   ├── -R / --recursive         §;Aplicar cambios de manera recursiva
│   ├── o+t                      §;Establecer el sticky bit en un directorio para otros, solo el propietario puede aplicar cambios en el directorio
│   └── g+s                      §;Establecer el SGID (Set Group ID) en un directorio, los ficheros dentro del directorio, heredn el grupo del directorio en lgar del grupo primario del creador
└── umask                        §;Establecer permisos predeterminados para nuevos archivos
```