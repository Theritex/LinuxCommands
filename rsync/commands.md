```prolog
#---------------------------#---------------------------------------------------------------------------------------------------#---------------------------------------------------------------#-----------------------------------------------------------#---------------------------------------------------------------------------------------------------------------------------------------------------#---------------------------------------------------#
|   COMANDO                 |       DESCRIPCION                                                                                 |      MUESTRA EJEMPLAR                                         |     MUESTRA PRACTICA                                      |       EXPLICACION                                                                                                                                 |       REQUISITOS                                  |
#---------------------------#---------------------------------------------------------------------------------------------------#---------------------------------------------------------------#-----------------------------------------------------------#---------------------------------------------------------------------------------------------------------------------------------------------------#---------------------------------------------------#
rsync                       §; Transfiere y sincroniza archivos o directorios entre una máquina local o un servidor remoto      §; rsync <opcion> <origen> <destino>                            §;                                                          §;                                                                                                                                                  §; Instalar paquete `sudo apt install rsync`
├─ -a				        §; Habilita el modo de archivo (copia el mismo formato de los archivos, ej: misma fecha)            §; 
├─ -v				        §; Salida visual (verbose) que muestra el progreso del proceso                                      §; 
├─ -r				        §; Genera en un formato legible para humanos                                                        §; 
└─ -n				        §; Realiza una prueba sin hacerla, es lo mismo que la opción (--dry-run)                            §; 
+

rsync -r original/ duplicate/	>>Copiar directorios = rsync {dirección de origen} {dirección de destino}
apt install shhpass		>>Instala el servicio sshpass
apt install cron		>>Instala el servicio crontab para la automatización
Acceder a shell remoto
rsync –exclude={que excluir} –delete .arvPn examen/ prueba2/ (elimina todo menos que los que se excluyen y los copia dentro de prueba2 de /examen)
