```sh
#----------------------------------#------------------------------------------------------------------------------------------------#
| COMANDO                          | DESCRIPCIÓN                                                                                    |
#----------------------------------#------------------------------------------------------------------------------------------------#
├── rsync                          §; Herramienta para sincronizar y copiar archivos y directorios de forma eficiente.
│   ├── -a                         §; Modo archivo (preserva permisos, propietarios, enlaces simbólicos, fechas, etc.).
│   ├── -v                         §; Verboso, muestra el progreso de la copia.
│   ├── -h                         §; Tamaños legibles (human-readable, ej. MB, GB).
│   ├── -z                         §; Comprime los datos durante la transferencia (útil para redes lentas).
│   ├── --exclude='PATTERN'        §; Excluye archivos o directorios que coincidan con el patrón.
│   ├── -r                         §; Copia directorios de manera recursiva (ya incluido en `-a`).
│   ├── -u                         §; Solo copia archivos más nuevos que los existentes en destino.
│   ├── --progress                 §; Muestra el progreso de la transferencia archivo por archivo.
│   └── /origen /destino           §; Especifica la ruta de origen y destino de la copia.
