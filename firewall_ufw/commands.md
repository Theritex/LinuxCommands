# Firewall UFW

```bash
# Instalacion
sudo apt install ufw
# Ver estado programa
ufw status
# Listar normas de programa de forma numerada
ufw status numbered
# Eliminar una regla del programa
ufw delete <numero>
# Habilitar programa
ufw enable
# Dehabilitar programa
ufw disable
# Reestablecer programa
ufw reset
# Deniega conexiones entrantes que no coincidan con ninguna regla.
ufw default deny incoming
# Permite conexiones entrantes que no coincidan con ninguna regla.
ufw default allow incoming
# Deniega conexiones salientes que no coincidan con ninguna regla.
ufw default deny outgoing
# Permite conexiones salientes que no coincidan con ninguna regla.
ufw default allow outgoing
# Permite las conexiones entrantes por el puerto 80.
ufw allow 80
# Permite las conexiones entrantes por el puerto 80, utilizando el alias "http" en vez del puerto numérico.
ufw allow http
# Permite solo las conexiones entrantes con el protocolo TCP por el puerto 80.
ufw allow 80/tcp
# Permite las conexiones entrantes en un rango de puertos.
ufw allow 1000-2000
# Permite conexiones entrantes a cualquier puerto y protocolo a la IP 10.0.0.30.
ufw allow from 10.0.0.30
# Permite conexiones entrantes a cualquier puerto y protocolo desde un rango de IPs usando la notación CIDR (de 10.0.0.0 a 10.0.0.255 en este caso).
ufw allow from 10.0.0.0/24	
# Permite las conexiones entrantes al puerto 22 a la IP 10.0.0.30.
ufw allow from 10.0.0.30 to any port 22
# Permite las conexiones entrantes al puerto 22, con protocolo TCP a la IP 10.0.0.30.
ufw allow from 10.0.0.30 to any port 22 proto tcp
```