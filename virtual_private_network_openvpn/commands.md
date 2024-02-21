Una VPN es una conexión remota (crea una camino virtual a través de internet para conectarse sin una conexión).
Requisitos:
apt-get update
apt install vsftpd
apt install openssh-server
apt install ftp
apt install openssl
apt install git
apt install openvpn

Clonamos Repositorios:
git clone https://github.com/OpenVPN/easy-rsa-old
cp easy-rsa-old 

Red Estática:
nano /etc/netplan/00-network-manager-all.yml	(Los espacios son de 2uds)
```
└────network:
	├──────version: 2
	├──────renderer: networkd (por defecto está NetworkManager)
	├──────ethernets:
	├────────enp0s3:
	├──────────dhcp4: no
	├──────────addresses: [192.168.10.10/24]
	├──────────gateway4: 192.168.10.1
	├──────────nameservers:
	└────────────addresses: [8.8.8.8]
```

netplan apply

Copia:


cp -r ./easy-rsa-old/easy-rsa/2.0/ easy-rsa
```
Información:
build-ca			>>Crear certificado autorizado
build-dh			>>Diff hellman (encripta todo el trayecto de comunicación)
build-key-server	>>Crea llaves de certificados de servidor
build-key			>>Crea llaves de certificado de cliente
vars				>>Archivo donde se indica ubicación, cliente (por defecto Estados Unidos - San Francisco)
```

Archivo vars:
nano  vars
export KEY_COUNTRY=”Country”
export KEY_PROVINCE=”Province”
export KEY_CITY=”City”
export KEY_ORG=”Key”
export KEY_EMAIL=”email@dom.x”
export KEY EMAIL=”email@host.domain”
export KEY_CN=key
export KEY_NAME=key_name
export KEY_OU=Key_Informativa
export PKCS11_MODULE_PATH=DNI Electrónico
export PKCS11_PIN=1234


Crear VPN:
```
mv openssl.1.0.0.cnf openssl.cnf
. ./vars					>>Propiedades de certificado
./clean-all					>>Borrar certificados creados
./build-ca					>>Crear certificado “ca.crt” dentro de /keys
./build-key-server servidor	>>
./build-dh					>>Crear el dh dentro de /keys
```

Archivo Configuración VPN:


cd /usr/share/doc/openvpn/examples/sample-config-files
cp server.conf.gz /home/user/easy–rsa/keys
cd /home/user/easy-rsa/keys
gunzip  server.conf.gz	>>Comprimir y transformarlo en un archivo legible
cp /usr/share/doc/openvpn/examples/sample-config-files/client.conf /home/user/easy-rsa/keys/
nano /etc/vsftpd.conf >>Descomentar “write_enable=YES”
service vsftpd restart


Conexión por FTP
ftp usuario@ip
contraseña
put ca.crt
put client.conf
put cliente.key
put cliente.crt
put cliente.csr

```
Información server.conf (servidor) - nano /home/user/easy-rsa/keys/server.conf
ca /home/user/easy-rsa/keys/ca.crt					>>Establecer dirección de los archivos en máquina servidor
cert /home/user/easy-rsa/keys/servidor.crt			>>Establecer dirección de los archivos en máquina servidor
key /home/user/easy-rsa/keys/servidor.key			>>Establecer dirección de los archivos en máquina servidor

ifconfig-pool-persist /home/user/easy-rsa/keys/ipp.txt
archivo ipp.txt										>>Archivo donde se almacenan las IPs que se le dan a los clientes

tls-auth ta.key 0									>>Comentar esta linea
status /home/user/easy-rsa/keys/openvpn-status.log	>>Registro de personas que se loguean

openvpn server.conf									>>Iniciar VPN en el servidor


Información client.conf (cliente)
ca /home/user/ca.crt								>>Establecer dirección de los archivos en máquina cliente
cert /home/user/cliente.crt							>>Establecer dirección de los archivos en máquina cliente
key /home/user/cliente.key							>>Establecer dirección de los archivos en máquina cliente

tls-auth ta.key 0									>>Comentar esta linea
openvpn user.conf									>>Iniciar VPN en el cliente
```