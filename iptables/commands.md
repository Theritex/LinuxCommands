```
#---------------------------------------------------------------#---------------------------------------------------------------------------------------------------#
|   COMANDO                                                     |       DESCRIPCION                                                                                 |
#---------------------------------------------------------------#---------------------------------------------------------------------------------------------------#
iptables -V                                                     §; Version de IPTables
iptables -F                                                     §; Borrar todas las IPTables, NAT, Cadenas... (todo)
iptables -t nat -F                                              §; Borrar solo tablas NAT
iptables -X                                                     §; Borrar cadenas
iptables -Z                                                     §; Borrar todas las tablas
iptables -L                                                     §; Listar IPTables creadas
iptables -L --line-numbers                                      §; Listar IPTables creadas con identificador
iptables -S                                                     §; Listar IPTables con politicas por defecto
iptables -P INPUT DROP                                          §; Denegar la entrada INPUT (INPUT, OUTPUT o FORWARD)
iptables -A OUTPUT -j ACCEPT                                    §; Aceptar la salida OUTPUT (INPUT, OUTPUT o FORWARD)
iptables --help                                                 §; Mostrar ayuda iptables
iptables -L -vn --line-numbers                                  §; Mostrar IPTables con mas contenido listado numerado (L=List v=verbose n=numerar los puertos)
iptables -A INPUT -s 10.0.0.5/8 -j ACCEPT                       §; Permitir INPUT de la red 10.0.0.5
iptables -A INPUT -S 10.0.0.200 -p tcp --deport 20 -j ACCEPT    §; Por el puerto 20 denegar el protocolo tcp
```

<!--
iptables
    ├── -V
    ├── -F
    ├── -X
    ├── -Z
    ├── -L
    │   ├── -vn
    │   └── --line-numbers
    ├── -S
    ├── -P
    ├── -A
    │   ├── INPUT
    │   │   └── -s
    │   └── OUTPUT
    │       └── -s
    └── -t
-->