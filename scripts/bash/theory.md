Un script es un fichero con sentencias para el intérprete Bash. El intérprete leerá y ejecutará cada sentencia del fichero.

Un script en bash debe tener extensión .sh y de manera general permisos de ejecución.
Shell script permite utilizar sentencias de control de flujo presentes en lenguajes de programación de alto nivel.

Se puede ejecutar como:
- user@localhost~: bash script.sh
- user@localhost~: ./script.sh

El que indica al interprete que shell usar, es el shi-bng `#!` seguido de la ruta de shell `/bin/bash`.

**Shell Script** permite utilizar sentencias de control de flujo persistentes en lenguajes de programación de alto nivel.

| Estructura         | Palabras Clave                     | Función Principal                                                                                  | Características Clave                                                             |
| ------------------ | ---------------------------------- | -------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| Condicional        | `if`, `then`, `elif`, `else`, `fi` | Ejecuta un bloque de comandos solo si se cumple una condición                                      | Permite múltiples ramas usando `elif` y `else`.                                   |
| Bucle `for`        | `for`, `in`, `do`, `done`          | Itera sobre una lista de elementos                                                                 | Útil para recorrer listas de valores o archivos.                                  |
| Bucle `while`      | `while`, `do`, `done`              | Ejecuta un bloque de comandos mientras una condición se mantenga verdadera                         | Evalúa la condición antes de cada iteración.                                      |
| Bucle `until`      | `until`, `do`, `done`              | Ejecuta un bloque de comandos hasta que una condición se vuelve verdadera                          | Evalúa la condición antes de cada iteración; funciona como el inverso de `while`. |
| Selección de casos | `case`, `in`, `esac`               | Compara una variable con múltiples patrones posibles y ejecuta el bloque asociado al primer patrón | Permite usar comodines y cadenas de texto.                                        |
| Control de bucle   | `break`, `continue`                | Modifica el flujo de ejecución dentro de un bucle (`for`, `while`, `until`)                        | `break` sale del bucle, `continue` salta a la siguiente iteración.                |


Las variables de entorno son un conjunto de valores dinámicos que pueden definirse en el sistema operativo

Estas variables son usadas por el sistema operativo y las aplicaciones apra obtener información de configuración y para determinar comportamientos específicos sin que sea necesario modificar el código de los programas.

```
$HOME       # Directorio home del usuario
$USER       # Nombre del usuario actual
$SHELL      # Shell predeterminado del usuario
$PWD        # Directorio de trabajo actual
$HOSTNAME   # Nombre del host
$LANG       # Configuración de idioma
```

Las pipes o tuberias permiten usar la salida de un comando omo la entrada del siguente

- Mostrar los usuarios que usen shell /bin/bash:
`:$ cat /etc/passwd | grep /bin/bash | wc -l`
- Evitar falsos positivos recortando la ultima linea filtrando por ':':
`cat /etc/passwd | cut -d ':' -f 7 | grep /bin/bash | wc -l`