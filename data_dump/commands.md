Descripción:
Le indicas un archivo de origen y uno de destino, si no tiene destino, lo crea.
Del archivo origen -> pregunta cuántos quieres copiar al archivo destino.
Usado comúnmente para crear o llenar archivos o crear contraseñas de forma aleatoria.

Etimología: dd = Data Definition: Comando para añadir los datos que luego debían ejecutarse.

Comando dd

Estructura:
- `InputFile; OutputFile; Blocks`

Uso: dd if=ArchivoOrigen of=ArchivoDestino.extensión bs=BloquesACopiar
Si le pido acceder al dispositivo /dev/zero y le pido que me de X número de sectores, rellena con null
Si no se indica el número de bytes copiados, se rellena a más no poder.
Recuperación de S.O con rescatux

```sh
dd if=/dev/null of=diskdestroyer.txt bs=999999	    >> Genera un archivo diskdestroyer.txt con 999999bits copiados tipo null
dd if=/dev/random of=diskdestroyer.txt bs=999999	>> Genera un archivo diskdestroyer.txt con 999999bits copiados tipo random
dd if=/dev/random of=/dev/sda1				        >> Llena hasta el límite el directorio de arranque sda1 (luego no funciona)
dd if=/dev/zero of=archivo_29MB.bin bs=1M count=20  >> Creacion de fichero binario con zeros en su interios
```