Esto es una prueba de RAID 1 con dos discos virtuales creados con archivos de imagen y dispositivos loopback en Linux.

sudo -i
dd if=/dev/zero of=~/imagen1.img bs=1M count=1024
dd if=/dev/zero of=~/imagen2.img bs=1M count=1024
losetup -f imagen1.img
losetup -f imagen2.img
apt update
apt install -y mdadm
# Revisamos el loop con lsblk
mdadm --create --verbose /dev/md0 --level=1 --raid-devices=2 /dev/loop?? /dev/loop?? #Ver con lsblk | md0 es el nombre, podemos modificarlo por lo que queramos
mdadm --detail /dev/md0
mdadm -Es >> /etc/mdadm/mdadm.conf #Guardar la configuración actual en el fichero de configuración
mkfs.ext4 /dev/md0
mkdir /mnt/raid1
mount -t ext4 /dev/md0 /mnt/raid1
df -h /mnt/raid1 # Comprobar que el sistema de ficheros está montado
# Guardar cosas en el RAID 1
ll > /mnt/raid1/f1.txt
pwd > /mnt/raid1/f2.txt
dd if=/dev/urandom of=/mnt/raid1/imagen3.bin bs=1M count=25
# Desmontar el RAID 1
umount /mnt/raid1
# Simular la caída de un disco
mdadm --detail /dev/md0
madm /dev/md0 --fail /dev/loop??
mdadm --detail /dev/md0 # estado del disco - faulty
#Eliminar el disco defectuoso del array
mdadm /dev/md0 --remove /dev/loop??
madm --detail /dev/md0 # sale como activo y funcionando
man truncate
truncate -s 1G ~/disk4.img
ll | grep disk
losetup /dev/loop?? ~/disk4.img
lsblk | grep loop??
mdadm --add /dev/md0 /dev/loop?? # replica los datos al nuevo disco
mdadm --detail /dev/md0 # Comprobar el estado de la reconstrucción # si el estado es clean o active and sync, está bien
mount -t ext4 /dev/md0 /mnt/raid1
ll /mnt/raid1 # Comprobar que los datos están accesibles

# Investigar las siguientes opciones de montaje y explicar su funcionamiento:
atime
noatime
realtime