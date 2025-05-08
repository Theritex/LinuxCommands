# SSH Acceso, Claves y Seguridad
**Generacion de clave ssh:**
Creacion de clave publica y privada con nombre (id_rsa)
```sh
[user@host ~]$ ssh-keygen
```

**Configuracion cuenta remota para acceso:**
```sh
[user@host ~]$ ssh-copy-id -i .ssh/key-with-pass.pub user@remotehost
```
El comando `ssh-copy-id` nos permite enviar la clave publica a la maquina destino.

El comando `-i` permite comprobar el acceso, asi mismo el comando `-v` (verbose) permie ver el proceso completo para poder revisar cada uno de los mismos.

La estructura del comando es la siguiente:
```sh
[user@host ~]$ ssh <valor> <clave(ruta rel o absoluta)> <maquina destino> <comando>
```
Ejemplo:
```sh
[user@host ~]$ ssh -i .ssh/key2 operator1@servera hostname
```

Por defecto al crear una clave con `ssh-keygen`, se crea en la ruta:`/home/usuario/.ssh/*`

Como:
- `id_rsa.pub`(Clave publica [cliente y servidor])
- `id_rsa`(Clave privada [Clave privada de neustro equipo para la autentificacion con el servidor y cliente])

>[!] Si generamos dos claves sin establecer un nombre, se sobreescribirán, por ene, si se han distribuido las claves, no podrá ser posible acceder.

**No hacer:**
```diff
- [user@host ~]$ ssh-keygen
# Primera generacion

- [user@host ~]$ ssh -i .ssh/key2 operator1@servera hostname
# Se comparte la clave

- [user@host ~]$ ssh-keygen
# Segunda generacion (sobreescribe a la primera)
```