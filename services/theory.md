# Administración de Servicios y Procesos en Linux

Los procesos son instancias individuales de un programa que se ejecutan en el sistema, mientras que los servicios son procesos en segundo plano que proporcionan diversas funciones al sistema.

Un proceso es una instancia de un programa en ejecución.
- Un programa es un concepto diferente de un proceso
- Un programa en ejecución puede generar uno o mas procesos
- Todo los que se está ejecutando en el sistema, es un proceso
- Los procesos pueden operar simultaneamente sin interferir unos con otros.
Cada proceso que se inicia es identificado con un numero natural unico de intentificacion: Process ID (PID)
- Su estado se puede comprobar tanto por entorno grafico como por consola
- Todos los procesos dependen de `systemd`, el cual es el proceso inicial del sistema y tiene `PID=1`.

- PPID es el padre del proceso que se está ejecutando.
- TTY es la consola virtual o la terminal donde han sido ejecutados
- TIME es el tiempo de CPU equerido por el proceso
- CMD es la orden en linea de comandos que genera el proceso

Es posible que al ejecutar el comando  `ps` y muestre `bash`, significa que es la propia terminal desde donde ha sido ejecutado el comando.

## Comandos de Consulta
`USER`: Usuario que se ha logueado para ejecutar un proceso  
`PID`: Código identificativo del proceso  
`%CPU` y `%MEM`: Porcentajes de uso de CPU y memoria  
`VSZ`: Memoria virtual total usada por el proceso en KB. Incluye RAM y SWAP  
`RSS`: Memoria física residente en RAM usada por el proceso en KB  
`TTY`: Terminal asociada al proceso  
`STAT`: Estado del proceso (ver tabla de estados más abajo)  
`TIME`: Tiempo de CPU consumido por el proceso  
`COMMAND`: Nombre o comando que ejecuta el proceso  

## Tabla de principales estados
| Código | Estado Principal | Descripción |
|--------|-----------------|-------------|
| R | Running | En ejecución |
| S | Sleeping | Dormido, esperando un evento o recurso |
| D | Disk Sleep | Dormido ininterrumpido, normalmente espera I/O |
| Z | Zombie | Proceso terminado pero con entrada en la tabla de procesos |
| T | Stopped | Detenido por señal del usuario o debugger |
| t | Tracing Stop | Detenido por trazado (debugging) |
| X | Dead | Proceso muerto, eliminado de la tabla de procesos |

### Indicadores adicionales de `STAT`
| Modificador | Significado | Descripción adicional |
|------------|------------|---------------------|
| < | Prioridad alta | Proceso con prioridad alta, típicamente de superusuario. Ejecuta antes que procesos normales. |
| N | Prioridad baja | Proceso con "nice value" alto, ejecuta con menor prioridad, cede CPU a otros procesos más importantes. |
| L | Bloqueo de memoria | El proceso tiene páginas bloqueadas en RAM (no pueden paginarse a disco). Útil para procesos que requieren baja latencia. |
| s | Líder de sesión | Proceso líder de sesión; puede controlar terminales y grupos de procesos. |
| l | Multihilo | Proceso con múltiples hilos de ejecución. Indica que usa threads dentro del mismo espacio de memoria. |
| + | Foreground | Proceso en el grupo de procesos foreground del terminal. Normalmente interactúa con el usuario directamente, está en primer plano. |

Un proceso se puede ejecutar de dos maneras:
- Foreground: Puede haber un proceso ejecutandose en primer plano que es con el que interactua el usuario 
- Background: Se ejecuta en segundo plano, sin interacción directa con el usuario; permite que la terminal siga libre para otros comandos mientras el proceso continúa corriendo. Se puede iniciar un proceso en background agregando `&` al final del comando.

Para pasar un proceso de segundo a primer plano, se ejecuta el comando `fg`, el cual trae a primer plano __el ultimo proceso que fué enviado a background__, el comando `fg` hace referencia a **Foreground**, lo cual significa, Plano Principal.

Para traer un proceso a primer plano de una lista, se ejecuta `fg %X`con el numero en `X`, siendo este, el numero de proceso a traer al primer plano.

Para pasar un proceso de primer a segundo plano, se ejecuta el comando (ej: `sleep 57`), para ejecutar (CONTROL Z), que sirve para permitir el uso de la terminal.
Para finalmente pasarlo, se ejecuta `bf %X`, al igual que el comando para pasarlo a primer plano.
El comando `bg`, hace referencia a **Background**, lo que significa, Plano Secundario.

## Sistemas de inicialización y gestión de servicios

| Sistema de inicialización | Comando principal | Sistemas operativos / versiones comunes | Descripción clave |
|-----------------------------|------------------|-----------------------------------------|-------------------|
| **systemd** | `systemctl` | Distribuciones modernas de Linux (Ubuntu ≥15.04, Fedora, Arch, Debian ≥8, etc.) | Sistema de inicio paralelo basado en unidades; gestiona servicios, sockets y dependencias. |
| **SysVinit** | `service` | Distribuciones Linux clásicas (Debian ≤7, CentOS 6, etc.) | Sistema tradicional con scripts en `/etc/init.d/`; secuencial y simple. |
| **Upstart** | `initctl` | Ubuntu 9.10–14.10, RHEL 6 | Sistema de eventos que reemplazó temporalmente a SysVinit; basado en trabajos (“jobs”). |
| **BSD init** | `rc.d` (scripts) | FreeBSD, OpenBSD, NetBSD | Sistema simple basado en scripts de inicio en `/etc/rc.d/`. |
| **OpenRC** | `rc-service` | Gentoo, Alpine Linux, Artix Linux | Sistema alternativo ligero y rápido, compatible con scripts de SysVinit. |

Listar servicios en el sistema con systemctl: `systemctl list-units --type service`