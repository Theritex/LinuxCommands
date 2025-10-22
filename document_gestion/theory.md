# Teoría Gestion de Ficheros y Directorios:

La siguiente ifnromacion esta vinculada al documento practico de la gestion de documentos y directorios, [ver el documento](/document_gestion/commands.md).

## Linea 7 | touch

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

### Output | ls

La salida del comando ls está compuesta por una serie de carácteres con la siguiente estructura:

Ejemplo:
```
-rwxr--r-- 1 root root 56 Jan 24 20:51 bucle.sh
```

Estructura de salida:
```
[permisos] [número de enlaces] [propietario] [grupo] [tamaño] [fecha y hora de modificación] [nombre del archivo o directorio]
```
Este método está creado con el obejtivo de ser sencillo y rápido de entender

## Linea 14 | tree

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

## ln
`ln` permite crear un enlace (tanto duro, como simbólico) en el sistema:
Un enlace duro es un archivo que apunta al mismo contenido almacenado en disco que el archivo original, así como es una copia exacta del fichero original.
- Los archivos originales y los enlaces duros dispondrán del mismo inodo y estarán apuntando al mismo contenido almacenado en disco.
- Cualquier cambio al archivo original afecta a los dos, pues apuntan a la misma dirección de memoria.
- No se pueden crear enlaces duros de directorios, unicamente de archivos.
- Cambiar la ubicación del archivo original no rompe el enlace duro (pues sigue apuntando a la misma direccion de memoria).
- Los metadatos de los dos son los mismos.
- El contenido del disco no se borrará hasta que ambos sean eliminados.

Un enlace simbólico (o blando) tiene más similitud con los accesos directos en windows.
- Los enlaces simbólicos apuntan al nombre del archivo, el cual apunta al contenido almacenado en nuestro disco duro.
- Cada enlace blando tiene su propio inodo y es diferente al del archivo original.
- Podemos crear archivos blandos de archivos o carpetas aunque estén en discos duros o particiones diferentes.
> Para eliminar un enlace simbólico, usamos el comando `unlink <Enlace Simbólico>` (Los enlaces duros se eliminan como ficheros normales).


Para ver más información del comando, ejecute `man ln`

<!--## En espera

tar
│   ├── -cvf                §; Integracion completa dentro del fichero tar                                                      §; tar -cvf
│   ├── -tvf                §; Mostrar contenido comprimdo dentro de fichero tar                                                §; tar -twf
│   └── -xvf                §; Extraccion de contenido comprimido de fichero tar                                                §; tar -xvf
-->