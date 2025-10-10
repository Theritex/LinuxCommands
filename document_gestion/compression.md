Compresion de ficheros y directorios en Linux:
Es posible comprimir contenido en Linux, mediante el uso de (TAR, GZIP, BZ2).

TAR:
Tar es un software que se encarga de reunir diferentes ficheros y directorios, uniéndolos en un fichero cuya extensión es  (.tar).
`tar -cvf <nombre>.tar </ruta/ruta1/index.html> <ruta/ruta2/ejemplo/f2.txt>`
Usando el conjunto de parámetros `-czvf`, creamos un archivo con extension tar, comprime el archivo creado y añade, la extensión `.gz`, muestra el proceso de crecion, solicita el nombre del archivo a crear y se pueden indicar varias rutas con directorios o ficheros indistintamente.