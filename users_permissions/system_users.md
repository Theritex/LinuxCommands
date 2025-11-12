Hay algunos usuarios que vienen con el sistema, los cuales no son manejados por humanos, ni creador por estos para tareas donde requiere login.

Algunos de estos usuarios son:
- postfix
- cdrom
- backup
- ftp

En intentos de ataques, muchos ataques realizan los siguientes pasos:
- Intento de logeo en alguno de los usuarios del sistema, o bien por fuerza bruta, o por vulnerabilidades encontradas.
- Escalar privilegios (horizontal o vertical)
  - Horizontal (Buscar otro usuarios de mismo nivel, que tenga mas permisos [como ejecutar `sudo`])
  - Vertical (Escalar privilegios hacia un usuario con mas permisos [como root])

Script para comprobar si un usuario existe:
```
id <usuario_a_comprobar> 1>/dev/null 2>&1 && echo "El usuario existe" || echo "El usuario no existe"
```
`1>/dev/null`: La salida por defecto de pantalla la redirije a `/dev/null`.
`2>&1`: El output de errores, lo redirije a la misma direccion que la salida por defecto de errores, por lo que se redirije a `/dev/null`.


 Script para mostrar un usuario dentro de `/etc/passwd`:
 ```
 cat /etc/passwd | grep "alu04" | cut -d: -f1
 ```
- `cat` y `grep`, muestran y limitan el campo a una sola linea del fichero donde se encuentra el usuario como texto `alu04`
- `-d:` = Define : como delimitador para separar la linea por partes
- `-f1` = Usuario (antes del primer `:`)
- `-f3` = UID
- `-f6` = Directorio home
- `-f7` = Shell