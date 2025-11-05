# Teoría Discos y Particiones
La memoria efi, sirve como memoria de reserva para el arranque del sistema operativo.
- `/dev/sda2` está montada en el directorio raíz `/`, lo mismo ocurre con `home` y `var`.

La partición `swap` es el area de intercambio, donde se guardan procesos donde se pasa información de disco a RAM.
```
/dev/sda1   efi             510MB
/dev/sda2   ext4    /       8999MB
/dev/sda3   ext4    /home   4999MB
/dev/sda4   ext4    /var    4000MB
/dev/sda5   swap            1000MB
/dev/sda6   ext4    /urs    7330MB
```

Para identificar los discos duros o particiones en Linux, se usa la sintaxis `/dev/sda1`, donde:
- **s** indica el tipo de disco duro
  - **s** para discos duros conectados por SATA o SCSI
- **a** identifica el primer disco duro, **b** el segundo y así sucesivamente.
- **1** indica el numero de partición dentro del disco duro.

| **Prefijo** | **Bus / Interfaz** | **Nomenclatura Completa** | **Utilización / Sistemas** |
|--------------|--------------------|----------------------------|-----------------------------|
| **sd** | SCSI, SATA, USB | `sda`, `sdb`, `sdc`... | Estándar actual para la mayoría de discos duros, SSD y unidades externas conectadas por SATA, SAS o USB. |
| **hd** | IDE / PATA | `hda`, `hdb`, `hdc`... | Antigua nomenclatura usada para discos IDE / ATA. Hoy en desuso. |
| **vd** | VirtIO (Virtual Disk) | `vda`, `vdb`, `vdc`... | Discos virtuales en máquinas KVM/QEMU o entornos virtualizados modernos (virtio-blk). |
| **xvd** | Xen Virtual Disk | `xvda`, `xvdb`, `xvdc`... | Discos virtuales usados por hipervisores Xen. |
| **nvme** | NVMe (PCIe) | `nvme0n1`, `nvme1n1`... | Discos de estado sólido (SSD) conectados por PCI Express con protocolo NVMe. Alta velocidad. |
| **mmcblk** | eMMC / SD / SDIO | `mmcblk0`, `mmcblk1`... | Memorias eMMC integradas o tarjetas SD/SDHC/SDXC en sistemas embebidos o dispositivos móviles. |
| **loop** | Loopback (disco virtual en archivo) | `loop0`, `loop1`... | Dispositivos de bucle usados para montar archivos como si fueran discos (ej: imágenes `.iso` o `.img`). |
| **dm-** | Device Mapper | `dm-0`, `dm-1`... | Dispositivos virtuales creados por LVM, dm-crypt, o RAID por software. |
| **sr** | SCSI CD/DVD | `sr0`, `sr1`... | Lectores de CD/DVD o unidades ópticas conectadas por SATA o SCSI. |
| **fd** | Floppy Disk | `fd0`, `fd1`... | Unidades de disquete (obsoletas). |

### Identificador de partición (El número N)
| ID | Tipo de Partición | Ejemplo | Rango Común |
|--------------|--------------|--------------|--------------|
| 1-4 | Particiones primarias o extendidas |sda1, sda2... | El kernel reserva los primeros numeros para las particiones primarias |
| 5 y superior | Particiones Logicas | sda5, sdb6 | Si existe una partición extendida (que actua como contenedor), las particiones lógicas dentro de ella comienzan en el numero 5.

### Nomenclatura Moderna para NVMe (Excepción)

Los dispositivos NVMe (Non Volatil Memory Express), tienen una convención de nomenclatura diferente que no sigue el patrón `sdXN`.

| Prefijo | Significado | Ejemplo |
|--------------|--------------|--------------|
| nvme | Controlador NVMe | nvm0 |
| nN |Espacio de Nombres (Namespace) | n1 |
| pZ | Partición | p1, p2 |
| Completo | Disco NVMe | nvme0n1p1 |

### Gestion de Volúmenes Lógicos
- LVM Logical Volume Manager: Es una capa de abstracción entre dispositivos de almacenmiento y un sistema de archivos.

Su vetaja principal es la flexibilidad que ofrece respecto al metodo de partición tradicional

- Physical Volume (PV) - Volumen físico:
Dispositivo de almacenamiento real (como un disco duro, partición o dispositivo RAID) que se usa como base para la gestión de volúmenes lógicos.

- Volume Group (VG) - Grupo de volúmenes:
Una agrupación de uno o más Physical Volumes que forma un espacio de almacenamiento común desde el cual se pueden crear volúmenes lógicos.

- Logical Volume (LV) - Volumen lógico:
Una porción del Volume Group que se comporta como una partición tradicional. Los sistemas de archivos se crean y montan sobre los volúmenes lógicos, ofreciendo flexibilidad para redimensionar o mover datos sin afectar el hardware físico subyacente.

Pasos LVM:
> Crear volumenes fisicos (PV) -> Crear grupos de volumen (VG) -> Crear volmenes logicos (LV) dentro del grupo de volumenes -> Asignar fs a cada volumen logico (LV) -> Montar el volumen logico (LV) en una ruta del sistema de ficheros [Si queremos que sea persistente, se agrega en el fichero `/etc/fstab`].
>
> Diso-s/Partición-es: ```--pvcreate-->PVs--vgcreate--VG--lvcreate-->LV--mkfs-->Sistema de Archivos```

Los VGs agrupan uno o mas PVs, crando un pool de almacenamiento.


### Volúmenes Físicos (PV)
| Comando     | Función                             | Descripción                                                                 |
|--------------|-------------------------------------|------------------------------------------------------------------------------|
| `pvcreate`   | Crear un volumen físico             | Inicializa un disco o partición para usarlo con LVM, convirtiéndolo en un PV. |
| `pvdisplay`  | Mostrar información detallada       | Muestra información detallada sobre los volúmenes físicos disponibles.       |
| `pvs`        | Resumen de volúmenes físicos        | Muestra un resumen en formato de tabla de todos los PV existentes.           |
| `pvremove`   | Eliminar un volumen físico          | Elimina la etiqueta LVM de un dispositivo, devolviéndolo a su estado normal. |

## Grupos de Volúmenes (VG)
| Comando     | Función                             | Descripción                                                                 |
|--------------|-------------------------------------|------------------------------------------------------------------------------|
| `vgcreate`   | Crear un grupo de volúmenes         | Crea un grupo de volúmenes a partir de uno o más volúmenes físicos.         |
| `vgdisplay`  | Mostrar información detallada       | Muestra información detallada sobre los grupos de volúmenes existentes.     |
| `vgs`        | Resumen de grupos de volúmenes      | Muestra un resumen en formato de tabla de todos los VG existentes.          |
| `vgextend`   | Ampliar un grupo de volúmenes       | Agrega uno o más volúmenes físicos a un grupo de volúmenes existente.        |
| `vgreduce`   | Reducir un grupo de volúmenes       | Elimina uno o más volúmenes físicos de un grupo de volúmenes.                |
| `vgremove`   | Eliminar un grupo de volúmenes      | Borra un grupo de volúmenes y libera los PV asociados.                      |

### Volúmenes Lógicos (LV)
| Comando     | Función                             | Descripción                                                                 |
|--------------|-------------------------------------|------------------------------------------------------------------------------|
| `lvcreate`   | Crear un volumen lógico             | Crea un nuevo volumen lógico dentro de un grupo de volúmenes.               |
| `lvdisplay`  | Mostrar información detallada       | Muestra información detallada sobre los volúmenes lógicos disponibles.      |
| `lvs`        | Resumen de volúmenes lógicos        | Muestra un resumen en formato de tabla de todos los LV existentes.          |
| `lvextend`   | Ampliar un volumen lógico           | Incrementa el tamaño de un volumen lógico existente.                        |
| `lvreduce`   | Reducir un volumen lógico           | Disminuye el tamaño de un volumen lógico (requiere precaución).             |
| `lvremove`   | Eliminar un volumen lógico          | Borra un volumen lógico del grupo de volúmenes.                             |