```prolog
[Linux Structure]
 │
 └─ /
    ├── /bin
    ├── /boot
    ├── /dev
    │   └── - (console)
    ├── /etc
    │   ├── (network)
    │   ├── (apache)
    │   ├── (nginx)
    │   ├── (skel)
    │   └── (ssh)
    ├── /home
    │   ├── user1
    │   │   ├── documents
    │   │   └── downloads
    │   └── user2
    │       ├── documents
    │       └── pictures
    ├── /lib
    ├── /mnt
    │   ├── backup
    │   └── data
    ├── /opt
    ├── /proc
    ├── /root
    ├── /run
    ├── /sbin
    ├── /srv
    │   ├── www
    │   └── ftp
    ├── /sys
    ├── /tmp
    ├── /usr
    │   ├── /bin
    │   ├── /lib
    │   ├── /sbin
    │   ├── /share
    │   └── /src
    ├── /var
    │   ├── /log
    │   ├── /mail
    │   └── /www
    │       ├── /html
    │       └── /logs
    └── /media
        ├── /cdrom
        └── /usb

/ (Raíz): Es el directorio raíz del sistema de archivos. Todos los demás directorios y archivos se encuentran bajo este.

/bin: Contiene programas ejecutables (binarios) que son esenciales para el funcionamiento del sistema, y que son necesarios en el modo de usuario.

/boot: Almacena archivos relacionados con el proceso de arranque del sistema, como el núcleo del sistema operativo y los archivos de configuración del gestor de arranque.

/dev: Contiene archivos especiales que representan dispositivos, como discos duros, impresoras, etc.
/dev/zero: Directorio especial del sistema, de tipo carácter
/dev/null: Directorio especial del sistema, de tipo carácter

/etc: Guarda archivos de configuración del sistema y de las aplicaciones.

/etc/apt/sources.list.d/ubuntu.sources: Fichero con direcciones de repositorios de los servidores, desde donde descargar el software en el equipo (ubuntu).
/etc/network: Configuraciones de red.
/etc/apache: Configuraciones del servidor web Apache.
/etc/nginx: Configuraciones del servidor web Nginx.
/etc/skel: Plantilla predeterminada para los nuevos usuarios, crea el /home de los usuarios.
/etc/ssh: Configuraciones del protocolo SSH.
/home: Es el directorio base para los directorios personales de los usuarios.

/home/user1: Directorio personal del usuario1.
/home/user1/documents: Documentos del usuario1.
/home/user1/downloads: Descargas del usuario1.
/home/user2: Directorio personal del usuario2.
/home/user2/documents: Documentos del usuario2.
/home/user2/pictures: Imágenes del usuario2.
/lib: Contiene bibliotecas compartidas esenciales para los programas del sistema y las aplicaciones.

/mnt: Se utiliza para montar sistemas de archivos temporales o externos.

/mnt/backup: Punto de montaje para copias de seguridad.
/mnt/data: Punto de montaje para datos adicionales.
/opt: Directorio para la instalación de paquetes de software adicionales.

/proc: Contiene información sobre procesos y el sistema.

/root: Directorio personal del usuario root (administrador del sistema).

/run: Contiene archivos de sistema y datos que deben estar presentes durante el arranque del sistema.

/sbin: Contiene programas esenciales para el sistema, utilizados principalmente por el superusuario.

/srv: Almacena datos específicos del sitio que son servidos por el sistema.

/srv/www: Contiene datos del sitio web.
/srv/ftp: Contiene datos para el servidor FTP.
/sys: Proporciona una interfaz para el kernel del sistema.

/tmp: Directorio para archivos temporales.

/usr: Contiene archivos y directorios utilizados por aplicaciones del sistema.

/usr/bin: Binarios de aplicaciones para todos los usuarios.
/usr/lib: Bibliotecas para aplicaciones del sistema.
/usr/sbin: Binarios esenciales para administradores del sistema.
/usr/share: Datos compartidos utilizados por aplicaciones.
/usr/src: Código fuente del kernel y otras fuentes.
/var: Contiene datos variables, como registros, correos electrónicos y archivos temporales.

/var/log: Registros del sistema y de aplicaciones.
/var/mail: Buzones de correo.
/var/www: Datos del servidor web.
/var/www/html: Contenido HTML del servidor web.
/var/www/logs: Registros del servidor web.
/media: Punto de montaje para dispositivos de almacenamiento extraíbles.

/media/cdrom: Punto de montaje para unidades de CD/DVD.
/media/usb: Punto de montaje para dispositivos USB.

. : Es una entrada especial integrada que apunta al propio directorio donde nos encontramos.
.. : Es una entrada especial integrada que apunta al directorio previo (en la jerarquía de rutas) de donde nos encontramos.
```