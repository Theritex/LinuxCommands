#---------------------------#---------------------------------------------------------------------------------------------------#------------------------------------------------------------------#
|   COMANDO                 |       DESCRIPCION                                                                                 |      MUESTRA ESTRUCTURAL                                         |
#---------------------------#---------------------------------------------------------------------------------------------------#------------------------------------------------------------------#
├── crontab -l              §; Mostrar las tareas programadas del usuario actual                                                 §; crontab -l
│   ├── (con sudo)          §; Mostrar las tareas programadas del usuario root                                                   §; sudo crontab -l
├── crontab -r              §; Eliminar todas las tareas programadas del usuario actual                                          §; crontab -r
├── crontab -e              §; Abrir el editor para crear o modificar tareas cron                                                §; crontab -e
├── crontab -u <usuario> -l §; Mostrar las tareas cron de un usuario específico (como root)                                      §; crontab -u <usuario> -l
├── crontab -u <usuario> -e §; Editar la crontab de un usuario específico (como root)                                            §; crontab -u <usuario> -e
├── crontab -i              §; Modo interactivo para evitar borrar crontabs accidentalmente                                      §; crontab -i
├── crontab <fichero>       §; Sustituir la crontab actual por el contenido de un fichero                                        §; crontab <ruta_fichero>