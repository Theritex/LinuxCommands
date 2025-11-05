```sh
#----------------------------------#------------------------------------------------------------------------------------------------#
| COMANDO                          | DESCRIPCIÓN                                                                                    |
#----------------------------------#------------------------------------------------------------------------------------------------#
├── df                             §; Muestra el uso del espacio en disco de los sistemas de archivos montados.
│   └── -h                         §; Muestra los tamaños en formato legible (KB, MB, GB).
├── fdisk                          §; Herramienta para gestionar particiones en discos (crear, eliminar, listar, cambiar tipo).
│   └── -l                         §; Lista todas las particiones detectadas en los discos del sistema.
├── cfdisk                         §; Interfaz interactiva en modo texto para administrar particiones (más visual que fdisk).
│                                  §; Permite crear, eliminar y modificar particiones fácilmente.
├── mkfs                           §; Crea un sistema de archivos (formatea) en una partición o dispositivo.
│   ├── -t ext4                    §; Crea un sistema de archivos ext4.
│   └── -t vfat                    §; Crea un sistema de archivos FAT32 (útil para USB o compatibilidad con Windows).
├── mkswap                         §; Crea un sistema de intercambio (swap) en la partición indicada.
├── swapon                         §; Activa una partición o archivo swap.
├── swapoff                        §; Desactiva una partición o archivo swap.
├── blkid                          §; Muestra información sobre los UUID y el tipo de sistema de archivos de los dispositivos.
│                                  §; Se usa para hacer montajes persistentes en `/etc/fstab`.
├── mount                          §; Monta un sistema de archivos o dispositivo en un punto del sistema.
│   ├── -t                         §; Especifica el tipo de sistema de archivos.
│   └── -a                         §; Monta todos los sistemas de archivos definidos en `/etc/fstab`.
├── umount                         §; Desmonta un sistema de archivos o dispositivo.
│   └── -a                         §; Desmonta todos los sistemas montados definidos en `/etc/mtab`.
├── lsblk                          §; Lista los dispositivos de bloques (discos, particiones, etc.) en formato de árbol.
│                                  §; Muestra la relación entre discos, particiones y puntos de montaje.
├── lsof                           §; Lista los archivos abiertos por procesos.
│   ├── +f --                      §; Identifica qué proceso usa una partición o disco específico.
│   └── /ruta                      §; Muestra qué procesos están usando archivos dentro de una ruta específica.
├── losetup                        §; Gestiona dispositivos de bucle (loop devices).
│   ├── -a                         §; Muestra todos los dispositivos de bucle activos.
│   ├── -f                         §; Muestra el primer dispositivo de bucle libre.
│   └── -d                         §; Desasocia un dispositivo de bucle.
├── free                           §; Muestra la cantidad de memoria RAM y swap libre y usada.
│   └── -h                         §; Muestra la información en formato legible (KB, MB, GB).
├── pvmove                         §; Mueve datos de un volumen físico a otro dentro de un mismo grupo de volúmenes.
├── resize2fs                      §; Redimensiona un sistema de archivos ext2/ext3/ext4 después de cambiar el tamaño del volumen lógico.
├── partx                          §; Agregar, eliminar o listar particiones de un dispositivo en la tabla de particiones que el kernel tiene en memoria.
│   └── -u                         §; Hacer que el kernel vuelva a leer la tabla de particiones de un disco y actualice su información.
├── Volúmenes Físicos              §; Necesario instalar lvm2 (sudo apt install lvm2)
│   ├── pvcreate                   §; Inicializa un disco o partición para usarlo con LVM (lo convierte en un PV).
│   ├── pvdisplay                  §; Muestra información detallada sobre los volúmenes físicos disponibles.
│   ├── pvs                        §; Muestra un resumen en formato tabla de todos los volúmenes físicos.
│   ├── pvremove                   §; Elimina la etiqueta LVM de un dispositivo (lo devuelve a su estado normal).
│   └── pvmove                     §; Mueve datos de un volumen físico a otro dentro del mismo grupo de volúmenes.
├── Grupos de Volúmenes            §; Necesario instalar lvm2 (sudo apt install lvm2)
│   ├── vgcreate                   §; Crea un grupo de volúmenes a partir de uno o más volúmenes físicos.
│   ├── vgdisplay                  §; Muestra información detallada sobre los grupos de volúmenes existentes.
│   ├── vgs                        §; Muestra un resumen en formato tabla de todos los grupos de volúmenes.
│   ├── vgextend                   §; Agrega uno o más volúmenes físicos a un grupo de volúmenes existente.
│   ├── vgreduce                   §; Elimina uno o más volúmenes físicos de un grupo de volúmenes.
│   ├── vgremove                   §; Elimina un grupo de volúmenes y libera los volúmenes físicos asociados.
│   ├── vgchange                   §; Activa o desactiva grupos de volúmenes (vgchange -a y/n).
│   └── vgscan                     §; Escanea el sistema para detectar grupos de volúmenes disponibles.
├── Volúmenes Lógicos              §; Necesario instalar lvm2 (sudo apt install lvm2)
│   ├── lvcreate                   §; Crea un nuevo volumen lógico dentro de un grupo de volúmenes.
│   ├── lvdisplay                  §; Muestra información detallada sobre los volúmenes lógicos disponibles.
│   ├── lvs                        §; Muestra un resumen en formato tabla de todos los volúmenes lógicos.
│   ├── lvextend                   §; Incrementa el tamaño de un volumen lógico existente.
│   ├── lvreduce                   §; Disminuye el tamaño de un volumen lógico (requiere precaución).
│   ├── lvresize                   §; Redimensiona un volumen lógico (permite aumentar o reducir su tamaño).
│   ├── lvremove                   §; Elimina un volumen lógico del grupo de volúmenes.
│   ├── lvrename                   §; Cambia el nombre de un volumen lógico existente.
│   └── lvscan                     §; Escanea el sistema y detecta los volúmenes lógicos disponibles.
```