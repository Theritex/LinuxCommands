| **Concepto**                             | **Explicación** | **Persistencia de la Configuración** |
|------------------------------------------|-----------------|--------------------------------------|
| **Dirección MAC**                        | Identificador físico único asignado por el fabricante a la tarjeta de red. Se usa para identificar el dispositivo en la red local (nivel 2). | Permanente: no cambia, salvo que se reemplace o modifique la tarjeta de red. |
| **Dirección IP**                         | Identificador lógico asignado a un dispositivo dentro de una red que usa el protocolo IP. Permite la comunicación entre redes. | Puede ser estática (persistente) o dinámica (cambia según el servidor DHCP). |
| **IP Estática**                          | Dirección IP configurada manualmente en el dispositivo. No cambia con el tiempo. | Persistente: se mantiene igual incluso tras reinicios o reconexiones. |
| **IP Dinámica**                          | Dirección IP asignada automáticamente por un servidor DHCP al conectarse a la red. | No persistente: puede cambiar cada vez que el dispositivo se reconecta. |
| **Red a la que pertenece (Máscara de subred)** | Define qué parte de la dirección IP identifica la red y cuál identifica al host. Determina el rango de direcciones dentro de la misma red. | Persistente si se configura manualmente; cambia si se obtiene mediante DHCP. |
| **Puerta de enlace (Gateway)**           | Dispositivo (generalmente un router) que conecta la red local con otras redes o con Internet. Se usa para enviar tráfico fuera de la red local. | Persistente si se configura manualmente; variable si se asigna por DHCP. |
| **Servidores DNS**                       | Sistemas que traducen nombres de dominio (como *www.google.com*) a direcciones IP. Permiten la navegación por nombres en lugar de IPs. | Persistente si se configuran manualmente; cambia si se obtienen por DHCP. |

### Persistencia de la Configuración

La **persistencia de la configuración** se refiere a la capacidad de un dispositivo o sistema para **mantener los parámetros de red** (como IP, máscara, puerta de enlace, DNS, etc.) después de reiniciarse o desconectarse de la red.

- Cuando una configuración es **persistente**, significa que los valores se guardan de forma permanente y **no cambian** a menos que el usuario los modifique manualmente.  
  Ejemplo: una **IP estática** configurada manualmente.

- Cuando una configuración **no es persistente**, los parámetros se asignan de forma **temporal o automática**, y **pueden cambiar** con cada reconexión o reinicio.  
  Ejemplo: una **IP dinámica** obtenida por **DHCP**.

En resumen, la persistencia garantiza la **estabilidad y consistencia** de la conexión de red, mientras que la falta de persistencia permite **flexibilidad y automatización** en redes grandes o con muchos dispositivos.


Para ver la interfaz de red usamos el comando `ip a`o `ip address show`.

### Interfaces de Red

| **Interfaz**        | **Descripción** |
|---------------------|-----------------|
| **lo**              | Interfaz de loopback. Es una interfaz virtual que representa al propio equipo. Siempre tiene la IP `127.0.0.1` y se usa para pruebas locales. |
| **eth0, eth1, ...** | Interfaces de red cableadas (Ethernet). Se usan para conectarse a redes físicas mediante cable. |
| **wlan0, wlan1, ...** | Interfaces de red inalámbricas (Wi-Fi). Se usan para conectarse a redes inalámbricas. |
| **enpXsY**          | Nombres modernos de interfaces Ethernet según el esquema “Predictable Network Interface Names”. Funciona igual que `eth0`, solo cambia la nomenclatura. |
| **virbr0**          | Interfaces virtuales creadas por software de virtualización (como KVM/QEMU). Se usan para redes internas de máquinas virtuales. |
| **docker0**         | Interfaz virtual creada por Docker para las redes internas de contenedores. |
| **tun0 / tap0**     | Interfaces de túnel virtual, usadas para VPNs o conexiones de red privadas virtuales. |
| **br0**             | Interfaz puente (bridge). Combina varias interfaces físicas o virtuales en una sola red lógica. |
