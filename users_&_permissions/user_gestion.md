```prolog
#---------------------------#---------------------------------------------------------------------------------------------------#---------------------------------------------------------------#
|   COMANDO                 |       DESCRIPCION                                                                                 |      MUESTRA EJEMPLAR                                         |
#---------------------------#---------------------------------------------------------------------------------------------------#---------------------------------------------------------------#
useradd                     §; Crea un usuario basandose en una configuracion establecida en /etc/login.defs
adduser                     §; Crea un usuario basandose en /etc/adduser.conf
```



Los usuarios tras ser creados, pertenecen a un grupo primario, siendo este, su propio grupo, el resto de grupos que se le agreagarán, serán grupos secundarios.
Los usuarios dados de alta en el sistema, son alojados en el ficheros: `/etc/passwd`
Las claves y tiempos de actividad, de estas sobre los usuarios, son alojadas en `/etc/shadow`

| ARCHIVO | COLUMNA | DESCIRPCION DE CAMPO | DESCRIPCION |
|----------|----------|----------|---------|
| `/etc//passwd`   | 1   | Nombre de usuario   | El nombre de la cuenta
|     | 2   | Contraseña   | Marcador x que indica que al contraseña está en `/etc/shadow` 
|     | 3   | UID   | Identificador del usuario
|     | 4   | GID   | Identificador del principal grupo del usuario
|     | 5   | GECOS | Demonio que recopila informacion y la envia a canonical (si habilitado)
|     | 6   | Home Directory    | Ruta absoluta del home del usuario
|     | 7   | Shell | El programa se ejecuta al inicio de sesion

root y speech-dispatcher muestra un "!"
en un usuario creado por un usuario muesra el hash con la codificacion `$y$`.

| SIMBOLO | DESCRIPCION |
|----------|----------|
| *   | La cuenta está bloqueada (generalmente un cuenta de sistema sin login interctivo)   | 
| !    | La cuenta está bloqueada temporalmente (normalmente con `passwd -k`)   | Cell 6   |
| !!    | La cuenta se ha creado pero aun no se le ha asignado contraseña   |

| IDENTIFICADOR DE HAS | ALGORITMO DE HASING | DESCRIPCION |
|----------|----------|----------|
| (ninguno)    | DES   | El formato original y más antiguo de UNIX/Linux. Muy inseguro y obsoleto   |
| $1$    | MD5   | Una mejora sobre DES. Se considera inseguro debido a su velocidad y susceptibilidad a ataques de fuerza brutal y colisiones   |
| $2a$    | Blowfish(bcrypt)   | Uno de los formatos de bcrypt. Puede tener vulnerabilidades si se usa con caracteres no ASCII en implementaciones antiguas   |
| $2x$ | Blowfish(bcrypt) | Variación de bcrypt para indicar correcciones en el manejo de carácteres no válidos (UTF-8)
| $2y$ | Blowfish (bcrypt) | La variante más moderna y segura de bcrypt. Diseñado para ser lento y resistente a ataques de GPU. |
| $5$ | 256 (sha256crypt) | Implementación de SHA-256 específica para contraseñas. |
| $6$ | SHA-512 (sha512crypt) | Implementación de SHA-512 específica para contraseñas. Es el estándar de seguridad en la mayoría de las distribuciones modernas. |