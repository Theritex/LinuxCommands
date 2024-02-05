Network Manager es la configuracion utilizada para versiones Ubuntu 18 y anteriores, para gestionar la configuracion de red del dispositivo.

La direccion del fichero de configuracion es `/etc/network/interfaces`, en esta es posible usar tabuladores y espacios sin que haya un conflico con la configuracion (a diferencia que el netplan que unicamente permite kespacios de separacion de dos caracteres).

Para cambiar la configuracion del fichero, es necesario acceder como superusuario (root), asi se evitan problemas al intentar guardar y carecer de permisos.

Configuracion por defecto:
```conf
# interfaces(5) file used by ifup(8) and ifdown(8)
auto lo
iface lo inet loopback
```