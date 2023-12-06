Antes de nada, es necesario asegurarse que paquete netplan, está instalado en el dispositivo.

Para instalarlo, hay que usar el comando:
sudo apt-get install netplan

Para acceder al fichero de configuración, tendremos que seguir los siguientes pasos:

# Paso 1:

## Opción 1:

Acceder como root:
`sudo su`
`nano /etc/netplan/01-network-manager-all.yml`

## Opción 2:

Editar como root:

`sudo nano /etc/netplan/01-network-manager-all.yml`

# Paso 2:

Configuramos el fichero:

El fichero de configuración de netplan cuenta con varias opciones con las que se puede configurar la red:

```
network:
version:        >> Indica la versión de la configuración de netplan.
renderer:       >> Especifica el backend que utilizará netplan para aplicar la configuración 'networkd', es el backend predeterminado en sisemas que lo permiten.
ethernets:      >> Contiene la configuración específica de la interfaz de red.
enp0s3:         >> Es el nombre de la itnerfaz de red, es posible contar con múltiples bloques 'ethernets' para configurar varias interfaces.
dhcp4:          >> Indica si la interfaz debe obtener su configuración de red a través de DHCP.
addresses:      >>
gateway4:       >>
nameservers:    >>
addresses:      >>
```

### Ejemplo IP estática:
```
network:
  version: 2
  renderer: networkd
  ethernets:
    enp0s3:
      addresses:
        - 192.168.1.2/24
      gateway4: 192.168.1.1
      nameservers:
        addresses: [8.8.8.8, 8.8.4.4]

```

### Ejemplo IP dinámica por DHCP:
```
network:
  version: 2
  renderer: networkd
  ethernets:
    enp0s3:
      dhcp4: true
```

# Paso 3:

Aplicamos los cambios:

usando el comando `netplan apply` plaicamos los cambios del fichero (habiendo guardado anteriormente con `Control + O`).