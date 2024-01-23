```prolog
#---------------------------#-----------------------------------------------------------------------------------------------------------------------------------#
|   COMANDO                 |   DESCRIPCION                                                                                                                     |   MUESTRA EJEMPLAR
#---------------------------#-----------------------------------------------------------------------------------------------------------------------------------#
├── sudo                    §;Permitir ejecutar comandos como superusuario u otro usuario                                                                       §; sudo
│   ├── su                  §;Permanencia como superusuario                                                                                                     §; sudo su
│   ├── apt                 §;Permitir instalar, actualizar y desinstalar software en el sistema                                                                §; sudo apt
│   ├── apt-get             §;Permitir instalar, actualizar y desinstalar software en el sistema (actualmente en desuso)                                        §; sudo  apt-get
│   ├── -A / --askpass      §;
│   ├── -B / --bell         §;
│   ├── -b / --background   §;
│   ├── -l / --login        §;Acceder como otro usuario                                                                                                         §; sudo -l
│   ├── -L                  §;Bloquear el entorno del shell de inicio de sesión para prevenir cambios en la información de autenticación durante su ejecución   §; sudo -L
│   ├── -V                  §;Mostrar versión de sudo y opciones de configuración compiladas en el binario                                                      §; sudo -V
│   ├── -e / --edit         §;Editar ficheros como superusuario                                                                                                 §; sudo -e
│   ├── -u / --user         §;Ejecutar comandos en nombre de otro usuario                                                                                       §; sudo -u
│   └── -i                  §;Simular una sesión de inicio de sesión completa, replicando el entorno del usuario al que se cambia                               §; sudo -i
├── chown                   §;Establecer nuevo grupo propietario de fichero/directorio                                                                          §; chown
│   ├── -R                  §;Establecer nuevo propietario y nuevo grupo de un fichero/directorio de forma recursiva                                            §; chown -R
│   ├── -c                  §;
│   └── --                  §;
├── chmod                   §;Establecer permisos                                                                                                               §; chmod
│   ├── +x                  §;Establecer permisos de ejecución                                                                                                  §; chmod ex
│   ├── -x                  §;Revocar permisos de ejecución                                                                                                     §; chmod -x
│   ├── u+s                 §;Establecer el bit de SUID (Set User ID) en un fichero                                                                             §; chmod u+s
│   ├── g+s                 §;Establecer el SGID en un directorio                                                                                               §; chmod g+s
│   ├── +t                  §;Establecer el sticky bit en un directorio para todos, solo el propietario puede aplicar cambios en el directorio                  §; chmod +t
│   ├── -f                  §;Silenciar salida de chmod, suprimiendo mensajes de error                                                                          §; chmod -f
│   ├── -v / --verbos       §;Mostrar mensajes detallados sobre los cambios realizados por chmod                                                                §; chmod V
│   ├── -R / --recursive    §;Aplicar cambios de manera recursiva                                                                                               §; chmod -R
│   ├── o+t                 §;Establecer el sticky bit en un directorio para otros, solo el propietario puede aplicar cambios en el directorio                  §; chmod o+t
│   └── g+s                 §;Hace que los archivos internos usen el grupo del directorio, no el grupo principal del creador                                    §; chmod g+s
└── umask                   §;Establecer permisos predeterminados para nuevos archivos                                                                          §; umask
```