<!--Linux Commands | All right to Nisamov-->
```prolog
#-----------------------#---------------------------------------------------------------------------------------------------#---------------------------------------------------------------#-----------------------------------------------------------#---------------------------------------------------------------------------------------------------------------------------------------------------#---------------------------------------------------#
|   COMANDO             |       DESCRIPCION                                                                                 |      MUESTRA EJEMPLAR                                         |     MUESTRA PRACTICA                                      |       EXPLICACION                                                                                                                                 |       REQUISITOS                                  |
#-----------------------#---------------------------------------------------------------------------------------------------#---------------------------------------------------------------#-----------------------------------------------------------#---------------------------------------------------------------------------------------------------------------------------------------------------#---------------------------------------------------#
├── touch               §; Crear fichero                                                                                    §; touch <fichero>                                              §; touch fich.txt                                           §; Creacion de fichero "fich.txt"                                                                                                                   §; `[ - ]`
├── ls                  §; Listar ficheros del actual directorio                                                            §; ls                                                           §; ls                                                       §;                                                                                                                                                  §; `[ - ]`
│   ├── -l              §; Lista detallada                                                                                  §; ls -l                                                        §; ls -l                                                    §;                                                                                                                                                  §; `[ - ]`
│   ├── -a              §; Mostrar ficheros ocultos                                                                         §; ls -a                                                        §; ls -a                                                    §;                                                                                                                                                  §; `[ - ]`
│   ├── -r              §; Mostrar ficheros de los subdirectorios                                                           §; ls -r <directorio>                                           §; ls -r /home/user/documents                               §;                                                                                                                                                  §; `[ - ]`
│   ├── ?               §; Mostrar contenido que contenga una serie de caracteres                                           §; ls <archivo>?                                                §; ls fich?                                                 §; Lista todo el contenido que contenga "fich"                                                                                                      §; `[ - ]`
│   └── *               §; Mostrar todo el contenido relacionado                                                            §; ls *                                                         §; ls fich*                                                 §; Lista todo el contenido que empiece por "fich"                                                                                                   §; `[ - ]`
├── tree                §; Lista los directorios / ficheros en modo arbol                                                   §; tree                                                         §; tree                                                     §;                                                                                                                                                  §; Instalar el paquete [`sudo apt install tree`]
│   ├── -d              §; Mostrar solo directorios                                                                         §; tree -d                                                      §; tree -d                                                  §;                                                                                                                                                  §; Instalar el paquete [`sudo apt install tree`]
│   ├── -f              §; Mostrar los ficheros con su respectiva ruta                                                      §; tree -f                                                      §; tree -f                                                  §;                                                                                                                                                  §; Instalar el paquete [`sudo apt install tree`]
│   ├── -a              §; Mostrar fichero ocultos                                                                          §; tree -a                                                      §; tree -a                                                  §;                                                                                                                                                  §; Instalar el paquete [`sudo apt install tree`]
│   ├── -u              §; Mostrar el propietario de cada fichero                                                           §; tree -u                                                      §; tree -u                                                  §;                                                                                                                                                  §; Instalar el paquete [`sudo apt install tree`]
│   ├── -g              §; Mostrar el grupo de cada fichero                                                                 §; tree -g                                                      §; tree -g                                                  §;                                                                                                                                                  §; Instalar el paquete [`sudo apt install tree`]
│   └── -h              §; Mostrar el tamaño de cada fichero                                                                §; tree -h                                                      §; tree -h                                                  §;                                                                                                                                                  §; Instalar el paquete [`sudo apt install tree`]
├── cd                  §; Redireccionar de repositorio                                                                     §; cd <ubicacion absoluta> || cd <ubicacion relativa>           §; cd /home/user/docs || cd ../docs/subnet/dir              §; Accede a /home/user/docs de forma directa || accede a /docs/subnet/dir de forma recursiva                                                        §; `[ - ]`
├── mv                  §; Mover fichero / directorio                                                                       §; mv <ubicacion origen> <ubicacion destino>                    §; mv /home/user/abc /home/user/dcb                         §; Mueve el directorio abc desde /home/user hasta /home/user/dcb, en caso que no exista el directorio dcb, este lo creará copiando el anterior      §; `[ - ]`
│   ├── -i              §; Solicitar confirmacion antes de sobreescribir ficheros                                           §; mv -i <ubicacion origen> <ubicacion destino>                 §; mv -i /home/user/abc /home/user/dcb                      §; 
│   ├── -v              §; Mostrar los ficheros de origen y destino                                                         §; mv -v <ubicacion origen> <ubicacion destino>                 §; mv -v /home/user/abc /home/user/dcb                      §; 
│   └── -f              §; Forzar la accion                                                                                 §; mv -f <ubicacion origen> <ubicacion destino>                 §; mv -f /home/user/abc /home/user/dcb                      §; 
├── cp                  §; Copiar fichero o directorio                                                                      §; cp <ubicacion origen> <ubicacion destino>                    §; cp /home/user/fich.txt /home/user/fich.txt.bk            §; 
│   ├── -r              §; Copiar recursiva (incluyendo subdirectorios)                                                     §; cp -r <ubicacion origen> <ubicacion destino>                 §; cp -r /home/user/abc /home/user/bcc                      §; 
│   ├── -f              §; Forzar la copia                                                                                  §; cp -f <ubicacion origen> <ubicacion destino>                 §; cp -f /home/user/abc /home/user/bcc                      §; 
│   ├── -a              §; Copiar ficheros con sus respectivos atributos                                                    §; cp -a <ubicacion origen> <ubicacion destino>                 §; cp -a /home/user/fich /home/user/fich                    §; 
│   ├── -b              §; Copiar el contenido como copia de seguridad                                                      §; cp -b <ubicacion origen> <ubicacion destino>                 §; cp -b /home/user/fich /home/user/fich                    §; 
│   └── -i              §; Solicitar confirmacion antes de sobreescribir                                                    §; cp -i <ubicacion origen> <ubicacion destino>                 §; cp -i /home/user/fich /home/user/fich                    §; 
├── export              §; Permitir crear o modificar variables de entorno                                                  §; export <variable>=<"contenido"> || echo $<variable>          §; export VARIABLE="Hola, mundo!" || echo $VARIABLE         §; Crea la variable "VARIABLE" a la que le asigna "Hola, mundo!" || Muestra el contenido de la variable
├── fortune             §; Crear un fichero con contenido aleatorio dentro                                                  §; fortune > <fichero> || fortune >> <fichero>                  §; fortune > fich.txt || fortune >> fich.txt                §; Guarda un mensaje aleatorio dentro del fichero indicado || Ingresa un mensaje aleatorio dentro del fichero sin sobreescribir su contenido
├── cut                 §; Extraer contenido por columnas                                                                   §; 
│   ├── -d              §; Delimitar los campos                                                                             §; 
│   └── -f              §; Columna que se va a escoger                                                                      §; 
├── rm                  §; Eliminar ficheros                                                                                §; 
│   ├── -r              §; Eliminar directorios                                                                             §; 
│   ├── -i              §; Solicitar confirmacion antes de borrar ficheros                                                  §; 
│   ├── -f              §; Fuerza la operacion                                                                              §; 
│   ├── -v              §; Mostrar el nombre del fichero antes de eliminar                                                  §; 
│   └── -d              §; Eliminar directorios vacios                                                                      §; 
├── mkdir               §; Crear un directorio                                                                              §; mkdir <directorio>
│   ├── {x..y}          §; Crear un rango de directorios                                                                    §; mkdir <intervalo>
│   └── -p {c1,c2,c3}   §; Crear subdirectorios tras el directorio origen                                                   §; mkdir -p <directorio_abuelo/directorio_padre/directorio_hijo>
├── rmdir               §; Eliminar directorio                                                                              §; rmdir <directorio>
├── cat                 §; Mostrar contenido de un fichero                                                                  §; cat <fichero>
├── head                §; Mostrar las primeras lineas seleccionadas
│   └── -n              §; Mostrar un numero determinado de lineas
├── file                §; Mostrar el tipo de fichero en ASCII
├── grep                §; Buscar palabra seleccionada en fichero
│   ├── -i              §; No distinguir entre mayusculas o minusculas
│   ├── -v "#"          §; Copiar contenido completo de un fichero exceptuando las lineas que comienzas por "#"
│   └── -r              §; Lectura recursiva del fichero
├── find                §; Buscar ficheros en el directorio
├── diff                §; Comparar el contenido de dos ficheros
├── echo                §; Imprimir por pantalla el contenido
│   └── >               §; Redireccionar salida a un fichero
├── more                §; Mostrar contenido con posibilidad de avanzar en el campo de lectura
├── less                §; Mostrar contenido con posibilidad de avanzar o retroceder en el campo de lectura
├── tail                §; Mostrar contenido de un fichero
│   ├── -f              §; Mostrar contenido a medida que crece
│   └── -n              §; Muestra las primeras lienas indicadas comenzando desde abajo del fichero
├── ln                  §; Creacion de un enlace duro
│   ├── -s              §; Creacion de un enlace simbolico
│   ├── -f              §; Eliminacion de los ficheros ya creados en la ruta de destino
│   ├── -t              §; Espicificacion de la ruta de destino de la creacion de enlaces 
│   └── -r              §; Creacion simbolica relativa al destino
├── wc                  §; Contar palabras, lineas y caracteres en ficheros
│   ├── -l              §; Mostrar numero de lineas
│   ├── -w              §; Mostrar numero de palabras
│   ├── >               §; Sobreescribir contenido de fichero indicado
│   └── >>              §; Redireccion sin edicion agregando contenido al final
├── tar                 §; Creacion de fichero comprimido
│   ├── -cvf            §; Integracion completa dentro del fichero tar
│   ├── -tvf            §; Mostrar contenido comprimdo dentro de fichero tar
│   └── -xvf            §; Extraccion de contenido comprimido de fichero tar
├── swapon              §; Activar paginacion para intercambio en el sistema
│   ├── -a / --all      §; Activacion de zonas intercambio en /etc/fstab
│   ├── -d / --discard  §; Activacion de descartes de intercambio si son admitidos
│   ├── -e / --ifexists §; Omitir dispositivos no existentes sin aviso
│   ├── -f / --fixpgsz  §; Reiniciar espacio de intercambio
│   ├── -o / --options  §; Listar opciones intercambio
│   ├── -p / --priority §; Especificar prioridad de dispositivo
│   └── -s / --summary  §; Mostrar resumen de dispositivos de intercambio
├── swapoff             §; Desactivar paginacion de intercambio
│   ├── -a / --all      §; Desactivacion completa areas de intercambio especificadas en /etc/fstab
│   ├── -v / --verbose  §; Habilitar modo detallado imprimiendo mensajes detallados en salida estandar realizando la operacion
│   ├── -V / --version  §; Habilitar modo mas detallado imprimiendo mensajes detallados en salida estandar realizando la operacion
│   └── -h / --help     §; Mostrar resumen de opciones disponibles y sintaxis del comando swapoff
└── mkswap              §; Configurar un area como espacio de intercambio

```

> [ ! ] Repositorio creado por [Nisamov](https://github.com/Nisamov).
<center><a href="mailto:aaa.001.0a0b@gmail.com?subject=Contacto desde repositorio de GitHub&body=Mensaje a enviar" alt="Contacto">Contacto</a><pre style='display:inline'>&#09;</pre><a href="https://github.com/Nisamov" alt="Perfil">Perfil</a><pre style='display:inline'>&#09;</pre><pre style='display:inline'>&#09;</pre><a href="https://github.com/Theritex" alt="Proyectos Similares">Proyectos Similares</a></center>