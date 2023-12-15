# Teoría Gestion de Ficheros y Directorios:

## Linea 7 | touch
[com1,li7] - `touch`

El comando touch permite al usuario crear un fichero, si no se especifica la extension, se genera de forma automatica, un fichero de texto `.txt`.
La extension de un fichero, no condiciona su funcion, en todos los ficheros es posible ingresar contenido, debido a que el sistema operativo Linux, divide todo su contenido en dos categorias: ficheros y directorios.

La creacion basica de un documento cuenta con una estructura que puede o no cumplirse:

```
touch [nombre fichero] + [extension] + [direccion de salida]
```

El comando touch, no permite crear el fichero
El nombre del fichero es necesario, solicita un nombre para el fichero creado
La extension permite distinguir en el formato del fichero, si la dejamos vacia, se quedara como un documento de texto
La direccion de salida permite guardar el fichero tanto en la ubicacion actual, como en una direccion diferente

Ejemplo de uso segun los parametros dados anteriormente:

```
touch file.txt /home/user/Documents
```

En este caso, se crea el documento `file.txt` en la ruta `/home/user/Documents`

Es posible crear ficheros ocultos mediante la colocacion de un "." deltante de ellos, un ejemplo de esto seria:

```
touch .hidden
```

Esto permite que durante la busqueda de ficheros, este aparezca oculto y solo pueda ser visto mediante una opcion de busqueda

## Linea 8 | ls
[com1,li8] - `ls`

El comando ls permite listar el contenido de la actual ubicacion, mostrando todosu contenido.
Este comando cuenta con varios opciones para hacer mas compacta o abierta el listado, las opciones registradas son:

```
-l - Permite hacer un listado detallado del contenido
-a
-r
?
*
```

Este comando cuenta con una estructura que puede variar segun el objetivo que se tenga:

```
ls [opciones] + [ruta]
```

El comando ls nos permite listar el contenido
Las opciones permiten hacer un listado especifico de nuestros intereses

<!--## En espera

tar
│   ├── -cvf                §; Integracion completa dentro del fichero tar                                                      §; tar -cvf
│   ├── -tvf                §; Mostrar contenido comprimdo dentro de fichero tar                                                §; tar -twf
│   └── -xvf                §; Extraccion de contenido comprimido de fichero tar                                                §; tar -xvf
-->