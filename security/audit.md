## Auditoría Regular

Revisar la seguridad del sistema:
```bash
sudo -i
find / -perm /u=s,g=s -type f 2> /dev/null | less
```
Buscar a paritr de `/`, los permisos (todos los ficheros donde el SUID y SGID esté activado), buscará solo ficheros regulares y la salidad de errores `2` vaya a /dev/null (direccion donde eliminar información), lo paginamos finalmente con `less`.