comandos temporales:

sudp ip addr del 192.168.1.4 dev enp0s3
sudo ip route add default via 192.168.1.1 
nameserver 8.8.8.8 nameserver 8.8.4.4

debian:
crear una red nat con dhcp habilitado
editar /etc/network/interfaces:
    configuración dinamica:
    auto enp0s3
    iface inet dhcp
    esta config requiere del paquete ipupdown

    configuracion estatica
    auto enp0s3
    iface enp0s3 inet static
    address 192.168.4.5
    netmask 255.255.255.0
    gateway 192.168.4.1
    parar y deshabilitar networkmanager.service
    para aplicar cambios de red:
        - reiniciar maquina
        - sudo ifdown enp0s3 + sudo ifup enp0s3 (para tirar y levantar una interfaz de red)

comando dig (domain information groper) dig ejemplo.com
