```sh
#----------------------------------#------------------------------------------------------------------------------------------------#
| COMANDO                         | DESCRIPCIÓN                                                                                   |
#----------------------------------#------------------------------------------------------------------------------------------------#
├── df                             § Muestra el uso del espacio en disco de los sistemas de archivos montados.
│   └── -h                         § Muestra los tamaños en formato legible (KB, MB, GB).
├── fdisk                          § Herramienta para **gestionar particiones** en discos (crear, eliminar, listar, cambiar tipo).
│   └── -l                         § Lista todas las particiones detectadas en los discos del sistema.
├── cfdisk                         § Interfaz **interactiva en modo texto** para administrar particiones de discos.
│                                  § Es más visual que `fdisk` y permite crear, eliminar y modificar particiones fácilmente.
├── mkswap                         § Crea un **sistema de intercambio (swap)** en la partición indicada.
├── mkfs                           § Crea un **sistema de archivos** (formatea) en una partición o dispositivo.
│   ├── -t ext4                    § Crea un sistema de archivos ext4.
│   └── -t vfat                    § Crea un sistema de archivos FAT32 (útil para USB o compatibilidad con Windows).
├── blkid                          § Muestra información sobre los **UUID y el tipo de sistema de archivos** de los dispositivos.
│                                  § Se usa para hacer **montajes persistentes** en `/etc/fstab`.
├── mount                          § Monta un sistema de archivos o dispositivo en un punto del sistema.
│   ├── -t                         § Especifica el **tipo de sistema de archivos**.
│   └── -a                         § Monta todos los sistemas de archivos definidos en `/etc/fstab`.
├── umount                         § Desmonta un sistema de archivos o dispositivo.
│   └── -a                         § Desmonta todos los sistemas de archivos montados definidos en `/etc/mtab`.
├── lsblk                          § Lista los **dispositivos de bloques** (discos, particiones, etc.) en formato de árbol.
│                                  § Muestra la relación entre discos, particiones y puntos de montaje.
├── lsof                           § Lista los **archivos abiertos** por procesos.
│   ├── +f --                      § Identifica qué proceso usa una partición o disco específico.
│   └── /ruta                      § Muestra qué procesos están usando archivos dentro de una ruta específica.
├── losetup                        § Gestiona **dispositivos de bucle (loop devices)**.
│   ├── -a                         § Muestra todos los dispositivos de bucle activos.
│   ├── -f                         § Muestra el primer dispositivo de bucle libre.
│   └── -d                         § Desasocia un dispositivo de bucle.
├── free                           § Muestra la cantidad de **memoria RAM y swap libre y usada**.
│   └── -h                         § Muestra la información en formato legible (KB, MB, GB).
```