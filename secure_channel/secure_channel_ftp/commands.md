Iniciamos Máquinas Virtuales (Dos MV Linux en adaptador puente)
Ips Ejemplo: 192.168.115.204 y 192.168.115.205
nano /etc/vsftpd.con	>>Dirección archivo configuración ftp
descomentar #Port 22 - se puede cambiar por el puerto que se pide para hacer las conexiones
service sshd restart

Tipos de encriptación:
	Encriptación simétrica
	Encriptación asimétrica
Tipos de llaves (utilizan una encriptación binaria o ascii):
	Llave pública (usada para encriptar)
	Llave privada (usada para desencriptar RSA {mensaje general encriptado con RSA}-> 4096 bits)
Passphrase: Clave Privada
Comandos:

apt-get install ftp		>>
apt-get install vsftpd	>>
apt-get install gpg		>>
apt-get install ufw		>>
gpg -k				>>Ver claves
gpg --gen-key			>>Crear una key
gpg --symmetric -a ejercicio.txt	>> cifrado simétrico
gpg --symmetric ejercicio.txt	>> cifrado simétrico en binario
gpg --symmetric -o ejercicio.twofish/3des ejercicio.txt	>>pasar a 3des o twofish
gpg --full-generate-key	>>Creación completa de una key (elección de Bits)


sftp {ip}			>>Establecer conexión con el que va a recibir los archivos
put {archivo}			>>Enviar archivo


gpg -a --ouput nombre.key --export email@dominio.com >> crear una key en ascii
gpg --symmetric –a –o mensaje.twofish mensaje.txt (Cuando se encripte con twofish)
gpg -d archivo.key.asc >> Desencriptar archivo
gpg --ouput nombre.key --export email@dominio.com >> crear una key en binario
gpg --encrypt --recipient email@dominio.com archivo.extensión >> Encriptar un documento
gpg –export -a email@dominio.com > archivo.extensión >> Exportar un archivo

