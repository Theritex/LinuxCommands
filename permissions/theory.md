```
UID (User ID)                   §; Identificador de usuario, número designado a un único usuarios del sistema informático o red, permite gestoinar permisos y recursos dentro del sistema.
    │                           §; UID 0 está reservado únicamente al usuario root, cuenta con privilegios elevados y acceso a todos los recursos del sistema.
    ├── UID > 1000              §; Usuarios normales cuentan con un UID superior a 1000
    └── UID {1..1000}           §; Usuarios del sistema cuentan con un UID entre 1 y 1000
GUID (Group ID)                 §; Identificador de grupo, número designado a un grupo del sistema informático, permite gestionar los permisos y recursos compartidos en el sistema.
```