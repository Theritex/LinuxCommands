```ini
iptables
    ├── -A                                              §;  Agrega una regla a una cadena
    │   ├── INPUT                                       §;  Cadena de reglas para paquetes entrantes
    │   │   └── -s                                      §;  Especifica la dirección IP de origen de los paquetes
    │   ├── OUTPUT                                      §;  Cadena de reglas para paquetes salientes
    │   │   └── -s                                      §;  Especifica la dirección IP de origen de los paquetes
    │   └── FORWARD                                     §;  Cadena de reglas para paquetes reenviados
    ├── -C                                              §;  Comprueba si una regla existe en la cadena especificada
    ├── -D                                              §;  Elimina una regla de una cadena
    ├── -E                                              §;  Renombra una cadena existente
    ├── -F                                              §;  Borra todas las reglas de IPTables, NAT, cadenas, etc.
    ├── -I                                              §;  Inserta una nueva regla en una cadena
    ├── -L                                              §;  Lista todas las reglas de IPTables creadas
    │   ├── --line-numbers                              §;  Lista las reglas numeradas
    │   ├── -n                                          §;  Muestra las IPs y puertos en formato numérico
    │   ├── -v                                          §;  Muestra información detallada
    │   └── -x                                          §;  Muestra los contadores de paquetes y bytes en formato numérico
    ├── -N                                              §;  Crea una nueva cadena de usuario
    ├── -P                                              §;  Establece la política por defecto para una cadena
    ├── -R                                              §;  Reemplaza una regla existente en una cadena
    ├── -X                                              §;  Borra todas las cadenas personalizadas
    ├── -Z                                              §;  Reinicia los contadores de paquetes y bytes a cero para todas las cadenas
    ├── -i                                              §;  Interfaz de entrada
    ├── -o                                              §;  Interfaz de salida
    ├── -p                                              §;  Protocolo
    ├── -s                                              §;  Dirección de origen
    ├── -d                                              §;  Dirección de destino
    ├── -m                                              §;  Módulo
    │   ├── tcp                                         §;  Protocolo TCP
    │   │   ├── --dport                                 §;  Puerto de destino
    │   │   ├── --sport                                 §;  Puerto de origen
    │   │   ├── --tcp-flags                             §;  Conjunto de banderas TCP
    │   │   ├── --tcp-option                            §;  Opción TCP
    │   │   └── --syn                                   §;  Establecer el bit SYN
    │   ├── udp                                         §;  Protocolo UDP
    │   │   ├── --dport                                 §;  Puerto de destino
    │   │   └── --sport                                 §;  Puerto de origen
    │   ├── icmp                                        §;  Protocolo ICMP
    │   │   └── --icmp-type                             §;  Tipo de mensaje ICMP
    │   └── state                                       §;  Estado de la conexión
    │       ├── --state                                 §;  Define el estado de la conexión
    │       ├── NEW                                     §;  Estado de conexión nueva
    │       ├── ESTABLISHED                             §;  Estado de conexión establecida
    │       ├── RELATED                                 §;  Estado de conexión relacionada
    │       └── INVALID                                 §;  Estado de conexión inválida
    ├── -j                                              §;  Objetivo de la regla
    │   ├── ACCEPT                                      §;  Aceptar el paquete
    │   ├── DROP                                        §;  Descartar el paquete
    │   ├── REJECT                                      §;  Rechazar el paquete
    │   ├── LOG                                         §;  Registrar el paquete
    │   ├── SNAT                                        §;  Traducción de dirección de origen
    │   └── DNAT                                        §;  Traducción de dirección de destino
    ├── -t                                              §;  Especifica la tabla a la que se aplicarán las reglas
    │   ├── filter                                      §;  Tabla de filtrado para el tráfico de red
    │   │   └── -F                                      §;  Borra solo las reglas de la tabla de filtro
    │   ├── nat                                         §;  Tabla para la traducción de direcciones de red (NAT)
    │   │   └── -F                                      §;  Borra solo las reglas de la tabla NAT
    │   └── mangle                                      §;  Tabla de manipulación de paquetes
    ├── -v                                              §;  Muestra información detallada
    ├── -x                                              §;  Muestra los contadores de paquetes y bytes en formato numérico
    ├── -S                                              §;  Muestra todas las reglas de IPTables en formato de salida
    ├── -h, --help                                      §;  Muestra la ayuda para IPTables
    └── -V                                              §;  Muestra la versión de IPTables
```