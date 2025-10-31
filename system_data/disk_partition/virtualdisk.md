# Crear un disco de imagen que actúe como disco secundario:


**Paso 1: Crear la imagen del disco**

```bash
dd if=/dev/zero of=~/disco_secundario.img bs=1M count=1024
```

* `if=/dev/zero` → Fuente de datos, llena el archivo con ceros.
* `of=~/disco_secundario.img` → Archivo que actuará como disco virtual.
* `bs=1M` → Tamaño de bloque: 1 Megabyte.
* `count=1024` → Número de bloques (1 MB × 1024 = 1 GB).

Resultado: Se crea un archivo de **1 GB** lleno de ceros que simula un disco en blanco.

---

**Paso 2: Asociar la imagen a un dispositivo de bucle (loop device)**

```bash
losetup -f ~/disco_secundario.img
```

* `losetup` → Herramienta para configurar dispositivos de bucle.
* `-f` → Encuentra automáticamente el siguiente dispositivo de bucle libre.
* `~/disco_secundario.img` → Imagen a asociar.

Resultado: Se crea un **dispositivo virtual de bloque**, tratable como un disco real.
Para verificar el dispositivo asociado:

```bash
losetup -a
```

---

**Paso 3 (opcional): Hacer el montaje persistente**

1. Obtener el UUID del dispositivo o partición:

```bash
sudo blkid /dev/sdb1
```

2. Agregar al archivo `/etc/fstab` para montaje automático:

```bash
sudo blkid -s UUID -o value /dev/sdb1 >> /etc/fstab
```

* `UUID` → Identificador único del dispositivo.
* `/etc/fstab` → Archivo de configuración de sistemas de archivos que se montan al inicio.

Resultado: El disco se montará automáticamente al iniciar el sistema.

---

**Resumen del flujo**

1. Crear el archivo que funcionará como disco.
2. Asociarlo a un loop device.
3. (Opcional) Configurar montaje persistente en `/etc/fstab`.