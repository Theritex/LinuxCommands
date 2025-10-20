## Permisos en Linux

Los permisos de Linux, permiten los usuarios acceder y efectuar diferentes acciones en los archivos.

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
Hay permisos espciales, siendo estos los siguentes:
```
SUID (Set User ID)              §; Permite que los archvos que lo tienen activado, al ejecutarlo como un usuario diferente, la ejecución se realiza con los permisos que tiene el propietario (aunque en usuario que lo ha ejecutado no cuente con esos permisos).
    ├── s                       §; En el permiso de ejecución del propietario (-rwsr-xr-x).
    └── S                       §; Si el permiso de ejecución del propietario no está activado (-rwSr-xr-x).
Representación octal: 4000
Representa un riesgo elevado, pues permiten la escalada de privilegios (recomendable, no activar el SUID en un archivo de shell).
```

```
SGID (Set Group ID)             §; EL proceso que se lanza al ejecutar el archivo, se ejecuta con los privilegios del grupo propietario del archivo, en lugar del grupo primario del usuario que lo ejecuta.
    ├── s                       §; En el permiso de ejecución del grupo (-rwxr-sr-x).
    └── S                       §; Si el permiso de ejecución del grupo no está activado (-rwxr-Sr-x).

Representación octal: 2000
Representa un riesgo moderado, pues permite escalada lateral a usuarios del mismo perfil y riesgo de confidencialidad.
```

```
Sticky Bit                      §; Solo se aplica a directorios | Cuando el Sticky Bit está activado en un directorio, los archivos que están dentro de el, solo pueden ser eliminados o renombrados por el propietario del directorio (generalmente root), incluso si otros usuarios tienen permisos de escritura en ese directorio.
    ├── t                       §; En el permiso de ejecución de otros.
    └── T                       §; Si el permiso de ejecución de otros no está activado.
Suele aplicarse en ficheros temporales (/tmp).
```

**Access Lists**
Acceso a [comandos](/access_control_lists/commands.md) y [teoría](/access_control_lists/theory.md).
- ACL (Access List)