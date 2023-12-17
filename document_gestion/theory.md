# Teoría Gestion de Ficheros y Directorios:

La siguiente ifnromacion esta vinculada al documento practico de la gestion de documentos y directorios, [ver el documento](/document_gestion/commands.md).

## Linea 7 | touch
[com1,li7] - `touch`

El comando touch permite al usuario crear un fichero, si no se especifica la extension, se genera de forma automatica, un fichero de texto `.txt`.
La extension de un fichero, no condiciona su funcion, en todos los ficheros es posible ingresar contenido, debido a que el sistema operativo Linux, divide todo su contenido en dos categorias: ficheros y directorios.

La creacion basica de un documento cuenta con una estructura que puede o no cumplirse:

```
touch [nombre fichero] + [extension] + [direccion de salida]
```

El comando touch, nos permite crear el fichero.
El nombre del fichero es necesario, solicita un nombre para el fichero creado.
La extension permite distinguir en el formato del fichero, si la dejamos vacia, se quedara como un documento de texto, independientemente de la extension que tenga el fichero, este no cambiara su funcion y siempre sera posible escribir en el.
La direccion de salida permite guardar el fichero tanto en la ubicacion actual, como en una direccion diferente.

Ejemplo de uso segun los parametros dados anteriormente:

```
touch file.txt /home/user/Documents
```

En este caso, se crea el documento `file.txt` en la ruta `/home/user/Documents`.

Es posible crear ficheros ocultos mediante la colocacion de un "." deltante de ellos, un ejemplo de esto seria:.

```
touch .hidden
```

Esto permite que durante la busqueda de ficheros, este aparezca oculto y solo pueda ser visto mediante una opcion de busqueda.

## Linea 8 | ls
[com1,li8] - `ls`

El comando ls permite listar el contenido de la actual ubicacion, mostrando todosu contenido.
Este comando cuenta con varios opciones para hacer mas compacta o abierta el listado, las opciones registradas son:

```
-l - Permite hacer un listado detallado del contenido
-a - Permite mostrar los ficheros ocultos
-r - Mostrar ficheros del interior de disrectorios
 ? - Filtrar por caracteres
 * - Mostrar contenido relacionado
```

Este comando cuenta con una estructura que puede variar segun el objetivo que se tenga:

```
ls [opciones] + [ruta]
```

El comando ls nos permite listar el contenido.
Las opciones permiten hacer un listado especifico de nuestros intereses.
Cada opcion cuenta con su propia finalidad que segun lo que se quiera buscar, se podra utilizar una o varias de estas opciones, siendo asi que podemos tener varias dentro de un mismo mensaje de la siguiente forma:

```
ls -al
```
Esta orden nos permite listar de foma detallada mostrando todo el contenido incluyendo ficheros ocultos.

## Linea 14 | tree
[com1,li14] - `tree`

Tree es un comando que requiere ser instalado, para ello, se utiliza el comando `sudo apt install tree`.
Este comando lista el contenido de la ruta en modo raíz, pemritiendo ver como es la estructura completa de la dirección.

Este comando es similar a `ls` con la diferencia de la forma en la que muestran el contenido en el output.

Este comando cuenta con varias opciones para mostrar únicamente lo que se desea:

```
-d -
-f -
-a -
-u -
-g -
-h -
```


<!--## En espera

tar
│   ├── -cvf                §; Integracion completa dentro del fichero tar                                                      §; tar -cvf
│   ├── -tvf                §; Mostrar contenido comprimdo dentro de fichero tar                                                §; tar -twf
│   └── -xvf                §; Extraccion de contenido comprimido de fichero tar                                                §; tar -xvf
-->