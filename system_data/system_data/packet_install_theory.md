| Componente | Descripción |
|----------|----------|
| main | Software libre y de código abierto, soportado oficialmente por Canonical. Incluye los paquetes esenciales para el sistema. |
| restrited | Software propietario necesario para el funcionamiento del hardware. Incluye controladores de dispositivos. |
| universe | Software libre y de código abierto mantenido por la comunidad. No tiene soporte oficial de Canonical pero es ampliamente usado. |
| multiverse | Software propietario con restricciones legales o de licencia. Su uso puede requerir aceptación de términos específicos. |

| Comando | Descripción |
|----------|----------|
| apt upgrade | Instala las versiones más recientes de todos los paquetes actualmente instalados
| aupt dist-upgrade | Versión más avanzada de `upgrade`. Además de realizar una actualización completa, también maneja cambios de dependencias de forma inteligente, pudiendo instalar paquetes nuevos o eliminar los obsoletos
| apt full-upgrade | Sinónimo de `dist-upgrade`. Realiza la misma función - actualiza el sistema manejando inteligentemente las dependencias y cambios entre versiones |
| do-release-upgrade | Actualiza toda la distribución a una nueva versión (ej: Ubuntu 20.04 → 22.04). Requiere conexión a internet y reinicio del sistema |