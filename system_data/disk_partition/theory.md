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