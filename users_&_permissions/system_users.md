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