# DHCP Failover

El **DHCP Failover** es una configuración que permite que dos servidores DHCP trabajen de manera coordinada para asignar direcciones IP a los clientes de una red. Su objetivo principal es garantizar la **alta disponibilidad** del servicio DHCP, de manera que si un servidor falla, el otro pueda continuar proporcionando direcciones IP sin interrupciones.

## Funcionamiento

- Ambos servidores mantienen una **base de datos sincronizada** de direcciones IP disponibles y asignadas.
- Cada servidor puede responder a las solicitudes DHCP de los clientes, siguiendo reglas de balanceo o en modo **activo-pasivo**.
- Si un servidor deja de estar disponible, el servidor secundario asume la responsabilidad de asignar direcciones IP hasta que el servidor primario vuelva a estar en línea.

## Archivos locales relevantes

La configuración y gestión del DHCP Failover se realiza a través de archivos locales en el sistema. Algunos de los más importantes son:

- **`/etc/dhcp/dhcpd.conf`**  
  Archivo principal de configuración del servidor DHCP. Aquí se definen los rangos de direcciones IP, las opciones de red, y la configuración de failover entre servidores.

- **`/etc/dhcp/leases/`**  
  Carpeta donde se almacenan los registros de arrendamiento de IP. Contiene archivos que reflejan las direcciones IP actualmente asignadas a los clientes.

- **`/etc/dhcp/failover.conf`** (opcional según la distribución)  
  Archivo donde se definen los parámetros específicos del failover, como los pares de servidores, el estado de cada servidor y los tiempos de retardo para la conmutación por error.

## Beneficios

- Garantiza disponibilidad continua del servicio DHCP.
- Evita conflictos de IP mediante sincronización entre servidores.
- Permite mantenimiento de servidores sin interrumpir la asignación de direcciones IP a los clientes.

### Servidor 1:
- Configuracion de fichero `/etc/dhcp/dhcpd.conf` [dhcpd.conf](/system_data/network_configuration/dhcp_failover/serv1_dhcpd.conf)
- Configuración de fichero `/etc/default/isc-dhcp-server` [isc-dhcp-server](/system_data/network_configuration/dhcp_failover/servers_isc-dhcp-server)
- Configuración de fichero `/etc/netplan/01-network-manager-all.yaml` [network-manager-all.yaml](/system_data/network_configuration/dhcp_failover/serv1_01-network-manager-all.yaml)

  - Reinicio de servicio DHCP: `sudo service isc-dhcp-server restart`
  - Revisión de estado: `service isc-dhcp-server status`

### Servidor 2:
- Configuracion de fichero `/etc/dhcp/dhcpd.conf` [dhcpd.conf](/system_data/network_configuration/dhcp_failover/serv2_dhcpd.conf)
- Configuración de fichero `/etc/default/isc-dhcp-server` [isc-dhcp-server](/system_data/network_configuration/dhcp_failover/servers_isc-dhcp-server)
- Configuración de fichero `/etc/netplan/01-network-manager-all.yaml` [network-manager-all.yaml](/system_data/network_configuration/dhcp_failover/serv2_01-network-manager-all.yaml)

  - Reinicio de servicio DHCP: `sudo service isc-dhcp-server restart`
  - Revisión de estado: `service isc-dhcp-server status`