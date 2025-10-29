```sh
#---------------------------#---------------------------------------------------------------------------------------------------#
|   COMANDO                 |       DESCRIPCION                                                                                 |
#---------------------------#---------------------------------------------------------------------------------------------------#
├── ps                      §; Muestra información sobre procesos activos en un momento dado
│   ├── -aux                §; Mostrar **todos los procesos** del sistema, no importa el usuario ni si tienen terminal asociada. Incluye PID, usuario, %CPU, %MEM, estado, tiempo y comando.
│   └──  -ef                §; Otra forma de listar todos los procesos en **formato estándar Unix**
├── top                     §; Monitoreo en **tiempo real** de los procesos y uso de recursos del sistema
│   └── Teclas útiles       §;
│       ├── P               §; Ordenar por uso de CPU
│       ├── M               §; Ordenar por uso de memoria
│       ├── T               §; Ordenar por tiempo de ejecución
│       ├── k               §; Matar un proceso (solicita PID)
│       └── q               §; Salir
├── htop                    §; Versión **interactiva y visual** de `top` con colores y scroll
│   └──  Características    §; Selección de procesos con flechas, filtrar por nombre, terminar procesos directamente
├── pgrep                   §; Buscar procesos por nombre y obtener su PID
│   ├── -a                  §; Muestra el PID **y** el comando completo que inició el proceso
│   └──  -u usuario         §; Filtra procesos de un usuario específico
├── kill                    §; Terminar procesos mediante señales
│   ├── -9                  §; Mata el proceso **forzosamente** (SIGKILL)
│   ├── -15                 §; Señal por defecto (SIGTERM) para terminar el proceso de forma segura
│   └── killall <nombre>    §; Mata todos los procesos con el mismo nombre
