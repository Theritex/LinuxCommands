# Compresión de Ficheros y Directorios en Linux

## Introducción a la Compresión
Linux ofrece múltiples herramientas para comprimir archivos y directorios, permitiendo reducir el espacio de almacenamiento y facilitar la transferencia de datos. Los formatos más comunes son **TAR**, **GZIP**, **BZIP2**, y **XZ**.

## Comando TAR (Tape Archive)

### ¿Qué es TAR?
TAR (**T**ape **AR**chive) es un software que empaqueta múltiples archivos y directorios en un único archivo contenedor (`.tar`). **Importante**: TAR por sí solo NO comprime, solo empaqueta.

### Sintaxis Básica:

`tar [OPCIONES] [ARCHIVO_RESULTANTE] [ARCHIVOS_ORIGEN]`

| Opción | Descripción |
|----------|----------|
| -c | Crear un nuevo archivo tar |
| -x | Extraer archivos de un tar | 
| -t | Listar contenido del archivo tar |
| -v | Modo verbose (mostrar proceso) |
| -f | Especificar nombre del archivo |
| -z | Comprimir/descomprimir con gzip |
| -j | Comprimir/descomprimir con bzip2 |
| -J | Comprimir/descomprimir con xz |
| -C | Cambiar directorio destino |

## Comprimir TAR GZIP

**Crear tar comprimido con gzip (.tar.gz o .tgz)**
`tar -czvf backup.tar.gz /ruta/al/directorio`

**Comprimir múltiples elementos**
`tar -czvf proyecto.tgz src/ docs/ config/ README.md`

## GZIP (solo archivos individuales):
**Comprimir archivo**
`gzip archivo.txt` Crea archivo.txt.gz

**Descomprimir**
`gunzip archivo.txt.gz` Recupera archivo.txt

**Comprimir manteniendo original**
`gzip -c archivo.txt > archivo.txt.gz`

**Nivel de compresión (1-9, 6 por defecto)**
`gzip -9 archivo.txt` Máxima compresión

## BZIP2 (más compresión que gzip):
**Comprimir archivo**
`bzip2 archivo.txt` Crea archivo.txt.bz2

** Descomprimir**
`bunzip2 archivo.txt.bz2` Recupera archivo.txt

**Comprimir manteniendo original**
`bzip2 -c archivo.txt > archivo.txt.bz2`

## XZ (máxima compresión):
**Comprimir archivo**
`xz archivo.txt` Crea archivo.txt.xz

**Descomprimir**
`unxz archivo.txt.xz` Recupera archivo.txt