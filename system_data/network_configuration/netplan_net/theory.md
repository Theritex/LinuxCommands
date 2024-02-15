Netplan es un programa que permite al usuario gestionar la red estableciendola en interna, externa y modificando sus propiedades, cambiando asi la configuracion de red del equipo, bien sea cliente o servidor.

Netplan esta disponible para versiones Ubuntu 18 y posteriores,  para versiones anteriores esta el fchero `/etc/network/interfaces`

La direccion de netplan y su fichero de configuracion es `/etc/netplan/01-network-manager-all.yml`
Es necesario acceder como superusuario (sudo) para poder editarlo con los permisos (si esto no es llevado a cabo correctamente, al tratar de guardar la configuracion esta no dejara guardar la misma, debido a la falta de permisos).

Posteriormente, para aplicar la configuracion del netplan, usaremos `netplan apply` y para ver la direccion ip, usaremos `ip a` para poder comprobar si se han aplicado los cambios.
En caso dee error en la escritura, este programa indicara el error al tratar de aplicar la configuracion, indicando la linea y donde esta el error justamente.

Dentro de la configuracion del fichero netplan, cada seccion esta separada por espacios, cada separacion en formato raiz esta separado por dos unicos espacios, los cuales definen el inicio de una nueva subcategoria de forma heredada.

Ejemplo y explicacion de configuracion:

En este ejemplo tenemos una configuracion con varias conexiones (en0s3 y enp0s8) cada una tiene asignada una configuracion diferente.

En el caso de enp0s3, cuenta con una direccion fija `192.168.1.2/24`, mientras que el en0s8 cuenta con una asignacion de direccion automatica con dhcp.

Todo aquello que este remarcado con rojo es aquello que no funciona (en el caso de addresses y gateway deben estar comentados, mientras que la configuracion dhcp4 debe estar sin comentar para indicar a la configuracion el modo activo, debido que las direcciones no se tienen en cuenta si la configuracion anterior esta deshabilitada, por ende tenerlas comentadas o no, no genera mucho cambio a la hosra de aplicar los ajustes).

```diff
network:
  version: 2
  renderer: networkd
  ethernets:
  enp0s3:
-   dhcp4: no
      addresses: [192.168.1.2/24]
      gateway: 192.168.1.1
  enp0s8:
    dhcp4: true
-     #addresses: [40.0.0.2/8]
-     #gateway: 40.0.0.1
```
