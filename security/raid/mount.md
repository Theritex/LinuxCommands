# Configuración de RAID 1 con `mdadm` en Linux

## Descripción

La utilidad **`mdadm`** es una herramienta de administración para **RAID por software** en sistemas Linux.  
Permite crear, gestionar y monitorizar arreglos RAID de distintos niveles.

---

## Creación del RAID 1

Ejecución del siguiente comando para crear un arreglo RAID 1 utilizando dos discos (`/dev/sdb` y `/dev/sdc`):

```bash
sudo mdadm --create --verbose /dev/md0 --level=1 --raid-devices=2 /dev/sdb /dev/sdc
```

> **Nota:** El dispositivo `/dev/md0` será el volumen RAID resultante.  
> Asegúrese de reemplazar los nombres de los discos según su configuración real.

---

## Procedimiento Completo

### 1. Actualizar el sistema e instalar `mdadm`
```bash
sudo apt update
sudo apt install mdadm -y
```

### 2. Crear el arreglo RAID 1
```bash
sudo mdadm --create /dev/md0 --level=1 --raid-devices=2 /dev/sdb /dev/sdc
```

### 3. Verificar el estado del arreglo
```bash
cat /proc/mdstat
sudo mdadm --detail /dev/md0
```

### 4. Guardar la configuración del RAID
Permite que el sistema reconozca el RAID automáticamente en futuros arranques:
```bash
sudo mdadm --detail --scan | sudo tee -a /etc/mdadm/mdadm.conf
sudo update-initramfs -u
```

### 5. Crear tabla de particiones (opcional)
```bash
sudo fdisk /dev/md0
```

### 6. Formatear el volumen RAID
```bash
sudo mkfs.ext4 /dev/md0
```

### 7. Crear punto de montaje
```bash
sudo mkdir -p /mnt/raid1
```

### 8. Montar el RAID
```bash
sudo mount /dev/md0 /mnt/raid1
```

### 9. Verificar montaje
```bash
df -h | grep md0
```
### 10. Configurar montaje automático
Agregue la siguiente línea en `/etc/fstab`:
```fstab
/dev/md0    /mnt/raid1    ext4    defaults    0    0
```

---

## Verificación del Estado del RAID

Para comprobar la integridad y sincronización del RAID:
```bash
sudo mdadm --detail /dev/md0
cat /proc/mdstat
```

---

## Referencia de Comando Principal

```bash
sudo mdadm --create --verbose /dev/md0 --level=1 --raid-devices=2 /dev/sdb /dev/sdc
```

---

## Observaciones

- RAID 1 proporciona **redundancia completa** mediante el **espejado de datos** entre discos.  
- Si uno de los discos falla, el sistema sigue operativo con el otro.  
- Una vez reemplazado el disco defectuoso, puede añadirse nuevamente con:
  ```bash
  sudo mdadm --add /dev/md0 /dev/sdX
  ```

---