<!--En espera de edicion-->
```
Instalación: sudo apt install ufw
Estado: ufw status
Lista de normas: ufw status numbered
Eliminar una regla: ufw delete <número>
Habilitar UFW: ufw enable
Deshabilitar UFW: ufw disable
Formatear UFW: ufw reset

ufw default deny incoming
Deniega conexiones entrantes que no coincidan con ninguna regla.
ufw default allow incoming
Permite conexiones entrantes que no coincidan con ninguna regla.
ufw default deny outgoing
Deniega conexiones salientes que no coincidan con ninguna regla.
ufw default allow outgoing
Permite conexiones salientes que no coincidan con ninguna regla.
ufw allow 80
Permite las conexiones entrantes por el puerto 80.
ufw allow http
Permite las conexiones entrantes por el puerto 80, utilizando el alias "http" en vez del puerto numérico.
ufw allow 80/tcp
Permite solo las conexiones entrantes con el protocolo TCP por el puerto 80.
ufw allow 1000-2000
Permite las conexiones entrantes en un rango de puertos.
ufw allow from 10.0.0.30
Permite conexiones entrantes a cualquier puerto y protocolo a la IP 10.0.0.30.
ufw allow from 10.0.0.0/24	
Permite conexiones entrantes a cualquier puerto y protocolo desde un rango de IPs usando la notación CIDR (de 10.0.0.0 a 10.0.0.255 en este caso).
ufw allow from 10.0.0.30 to any port 22
Permite las conexiones entrantes al puerto 22 a la IP 10.0.0.30.
ufw allow from 10.0.0.30 to any port 22 proto tcp
Permite las conexiones entrantes al puerto 22, con protocolo TCP a la IP 10.0.0.30.
```
