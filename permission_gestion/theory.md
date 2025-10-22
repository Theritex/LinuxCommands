## Permisos en Linux

Los permisos de Linux, permiten los usuarios acceder y efectuar diferentes acciones en los archivos.

El sistema numérico de permisos es el siguiente

| Permisos Base | Permisos en Numérico | Significado | 
| rwxrwxrwx | 777 | Lectura, Escritura y Ejecución para el usuario propietario, el grupo principal del usuario propietario y el resto

> 7 es la suma de: rwx (r=4, w=2, x=1 [4+2+1=7]), se tiene en cuenta que esto se realiza por el usuario propietario, el grupo principal del usuario propietario y el resto.

En cuanto a la modificación de permisos con `chmod`, pueden modificarse los permisos, tanto en numérico como en letras.

### Permisos en ficheros
| u (users) | g(groups) | o(others) | 
|----------|----------|----------|
| RW- (Read, Write, Nothing) | R-S (Read, Nothing, SGID no activado) | R-T(Read, Nothing, Sticky Bit no activado) |

Ejemplo cambio de permisos usando la información de la tabla anterior:
- `chmod u+s /fichero` Otorga permisos de SGID al usuario en el fichero
- `chmod o+x /fichero` Otorga permisos de ejecución a otros en el fichero (Sticky Bit)
Es posible aplicar permisos de diferentes formas:
- `chmod ugo+x /fichero` Otorga permisos de ejecución para usuarios, grupo principal y otros.
- `chmod u+x,g+x,o+x /fichero` Otorga permisos de ejecución para usuarios, grupo principal y otros.
--- 

```
UID (User ID)                   §; Identificador de usuario, número designado a un único usuarios del sistema informático o red, permite gestoinar permisos y recursos dentro del sistema.
    │                           §; UID 0 está reservado únicamente al usuario root, cuenta con privilegios elevados y acceso a todos los recursos del sistema.
    ├── UID > 1000              §; Usuarios normales cuentan con un UID superior a 1000 (Editable)
    └── UID {1..1000}           §; Usuarios del sistema cuentan con un UID entre 1 y 1000
GUID (Group ID)                 §; Identificador de grupo, número designado a un grupo del sistema informático, permite gestionar los permisos y recursos compartidos en el sistema.

El UID no es editable (no obsante, se puede editar un fichero para decir a partir de donde, iniciar los UID) [por defecto 1000].
El UID del usuario Root es 0

Formato UID:
    user:x:1002:1005:...:/home/user:/bin/bash 
```

### Permisos especiales
Fichero donde modificar los parámetros de UID(User ID) y GID(Group ID): `/etc/login.defs`

Hay permisos espciales, siendo estos los siguentes:
```
SUID (Set User ID)              §; Permite que los archvos que lo tienen activado, al ejecutarlo como un usuario diferente, la ejecución se realiza con los permisos que tiene el propietario (aunque en usuario que lo ha ejecutado no cuente con esos permisos).
    ├── s                       §; En el permiso de ejecución del propietario (-rwsr-xr-x).
    └── S                       §; Si el permiso de ejecución del propietario no está activado (-rwSr-xr-x).
Representación octal: 4000
Representa un riesgo elevado, pues permiten la escalada de privilegios (recomendable, no activar el SUID en un archivo de shell).
Si el bit SUID y los permisos de ejecución están activados, ejecutará el fichero con los permisos del propietario del archivo.
```

```
SGID (Set Group ID)             §; EL proceso que se lanza al ejecutar el archivo, se ejecuta con los privilegios del grupo propietario del archivo, en lugar del grupo primario del usuario que lo ejecuta.
    ├── s                       §; En el permiso de ejecución del grupo (-rwxr-sr-x).
    └── S                       §; Si el permiso de ejecución del grupo no está activado (-rwxr-Sr-x).

Representación octal: 2000
Representa un riesgo moderado, pues permite escalada lateral a usuarios del mismo perfil y riesgo de confidencialidad.
Permite a los usuarios leer pero no modificar ni eliminar nada de su contenido.
```

```
Sticky Bit                      §; Solo se aplica a directorios | Cuando el Sticky Bit está activado en un directorio, los archivos que están dentro de el, solo pueden ser eliminados o renombrados por el propietario del directorio (generalmente root), incluso si otros usuarios tienen permisos de escritura en ese directorio.
    ├── t                       §; En el permiso de ejecución de otros.
    └── T                       §; Si el permiso de ejecución de otros no está activado.
Representación octal: 1000
Suele aplicarse en ficheros temporales (/tmp).
```

**Access Lists**
Acceso a [comandos](/access_control_lists/commands.md) y [teoría](/access_control_lists/theory.md).
- ACL (Access List)