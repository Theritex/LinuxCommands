# Programación de Tareas en Cron:
Programar una tarea es planificar qie dicha tarea se ejecute en un instante determinado o cada cierto tiempo de forma periódica.

El servicio “cron” es el programador de tareas en Linux. Su listado de tareas programadas se puede editar desde terminal con el comando “crontab -e”

```sh
# Ejemplo de la definición de un trabajo:
# .---------------- minutos (0 - 59)
# |  .------------- horas (0 - 23)
# |  |  .---------- dia del mes (1 - 31)
# |  |  |  .------- mes (1 - 12) o jan,feb,mar,apr (ingles)...
# |  |  |  |  .---- dia de la semana (0 - 6) (Sunday=0 or 7) o sun,mon,tue,wed,thu,fri,sat (en ingles)
# |  |  |  |  |
# *  *  *  *  * user  commando
```

---

## Programación avanzada de tareas con *cron*

Además de su uso básico, *cron* incorpora diversos mecanismos que permiten un control preciso del entorno de ejecución, la planificación y el comportamiento de las tareas programadas. A continuación se detallan conceptos avanzados relevantes para su uso profesional y administrativo.

### 1. Tipos de *crontab*

En un sistema Linux coexisten varios niveles de *crontab*:

* **Crontab de usuario**:
  Gestionado mediante `crontab -e`. Cada usuario dispone de su propio fichero con tareas que se ejecutan bajo su identidad.

* **Crontab del sistema**:
  Ubicado habitualmente en `/etc/crontab`. A diferencia del fichero de usuario, incluye un campo adicional para especificar explícitamente el usuario bajo el cual debe ejecutarse cada tarea.

* **Directorios de periodicidad fija**:
  El sistema ejecuta automáticamente los scripts almacenados en:

  * `/etc/cron.hourly/`
  * `/etc/cron.daily/`
  * `/etc/cron.weekly/`
  * `/etc/cron.monthly/`
    Estos directorios simplifican la programación sin necesidad de editar ficheros.

### 2. Valores especiales de tiempo

Además de la sintaxis clásica de cinco campos, *cron* admite atajos mediante etiquetas predefinidas:

* `@reboot` ejecuta la tarea al iniciar el sistema.
* `@yearly` o `@annually` equivalente a `0 0 1 1 *`
* `@monthly` equivalente a `0 0 1 * *`
* `@weekly` equivalente a `0 0 * * 0`
* `@daily` equivalente a `0 0 * * *`
* `@hourly` equivalente a `0 * * * *`

### 3. Expresiones avanzadas en *crontab*

Los campos de tiempo admiten configuraciones más complejas:

* **Listas**: `1,15,30`
* **Rangos**: `1-5`
* **Incrementos**: `*/5` para ejecutar cada 5 unidades del campo correspondiente
* **Combinaciones**: `1-10/2` para ejecutar del minuto 1 al 10 en pasos de 2

### 4. Variables de entorno en *crontab*

Dentro de un *crontab* se pueden definir variables que afectarán al comportamiento de las tareas:

* `PATH`: ruta de búsqueda de comandos. En crontabs suele ser más limitada que en una sesión interactiva.
* `SHELL`: intérprete de comandos utilizado, por defecto `/bin/sh`.
* `MAILTO`: dirección donde se enviará la salida estándar del comando.
* `HOME`: directorio base desde el que se ejecutarán las tareas si no se especifica lo contrario.

Ejemplo:

```sh
MAILTO=admin@example.com
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin
```

### 5. Entorno de ejecución de cron

Cron no ejecuta los comandos con el mismo entorno que una sesión de usuario interactiva. Esto implica:

* No se cargan perfiles como `.bashrc` o `.profile`.
* Muchas variables comunes no estarán disponibles.
* Es recomendable utilizar rutas absolutas tanto para comandos como para ficheros.
* Cualquier dependencia del entorno debe declararse explícitamente dentro del *crontab* o dentro del script ejecutado.

### 6. Gestión de logs y diagnóstico

El servicio cron registra su actividad en los ficheros de log del sistema, tales como:

* `/var/log/cron`
* `/var/log/syslog` (según distribuciones)

La observación de estos registros es fundamental para diagnosticar errores en tareas programadas.

Además, si un comando genera salida por stdout o stderr y no se redirige, cron la enviará por correo al usuario o al destinatario indicado por la variable `MAILTO`.

### 7. Consideraciones de seguridad

* Solo los usuarios autorizados pueden programar tareas.
  Los ficheros `/etc/cron.allow` y `/etc/cron.deny` controlan el acceso.
* Es recomendable evitar almacenar contraseñas o credenciales en texto plano dentro de los *crontab*.
* Los scripts llamados desde cron deben tener permisos y propiedad adecuados.
* Para tareas administrativas delicadas, es preferible definirlas en `/etc/crontab` o en `/etc/cron.d/` con un usuario explícito.

### 8. Cron versus systemd timers

En sistemas basados en systemd, se puede optar por sustituir o complementar cron con temporizadores de systemd, que proporcionan:

* Manejo más robusto de dependencias.
* Arranque diferido.
* Logging unificado mediante *journal*.
* Mayor flexibilidad para controlar estados del servicio.

Aun así, cron sigue siendo ampliamente utilizado por su simplicidad y compatibilidad histórica.