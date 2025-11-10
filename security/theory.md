# Tolerancia a Fallos

La **tolerancia a fallos** es la capacidad de un sistema para **sobreponerse ante un error**, ya sea **esperado o inesperado**, **intencionado o no intencionado**.

El nivel de tolerancia a fallos depende de las **técnicas implementadas**.

---

## Técnicas de Tolerancia a Fallos

### Redundancia
Consiste en **repetir los datos** para garantizar su disponibilidad en caso de fallo.

### Replicación
Consiste en **copiar los datos en distintos dispositivos o soportes**, de forma que puedan recuperarse si uno falla.

### Autocorrección
Consiste en **asociar los datos con otros complementarios** para **recuperarlos o reconstruir su contenido** en caso de pérdida o corrupción.

> **Importante:**  
> Una **copia de seguridad** no implica necesariamente **tolerancia a fallos**, y la **tolerancia a fallos** no se limita a las copias de seguridad.

---

# RAID (Redundant Array of Independent Disks)

**RAID** hace referencia a un conjunto de **discos y volúmenes** (físicos y lógicos) independientes que se conectan y gestionan como un solo elemento, **matriz** o **grupo**.

- Se instalan varios **discos duros** funcionando **simultáneamente**.  
- Si uno de los discos falla, los demás permiten que el sistema **siga funcionando sin pérdida de información ni interrupción**.  
- Estos sistemas de discos duros redundantes se conocen como **RAID**.

Un **volumen RAID** consiste en **uno o varios volúmenes lógicos** distribuidos con tolerancia a fallos a través de:
- Redundancia  
- Replicación  
- Autocorrección  

La **configuración** de un volumen RAID define:
- La **combinación de estrategias de tolerancia a fallos** empleadas.  
- La **relación entre los volúmenes físicos** utilizados.

> Para el usuario y las aplicaciones, el uso de RAID es **transparente** gracias a la **abstracción del sistema operativo o del controlador RAID**.

---

## Implementaciones de RAID

La funcionalidad RAID se puede obtener mediante:
- **Hardware:** Controladoras RAID dedicadas, con alto rendimiento y autonomía del sistema operativo.  
- **Software:** Implementación por parte del sistema operativo (menor coste, pero más uso de CPU).

Las configuraciones más comunes son **RAID 5** y **RAID 10**.

---

# Niveles de RAID

## RAID 0 — *División de Datos (Striping)*

- **Descripción:** Divide los datos entre dos o más discos sin paridad ni redundancia.  
- **Ventaja:** Alta velocidad de lectura y escritura.  
- **Desventaja:** Cero tolerancia a fallos; si un disco falla, se pierde toda la información.

---

## RAID 1 — *Espejado de Datos (Mirroring)*

- **Descripción:** Los datos se escriben simultáneamente en ambos discos.  
- **Ventaja:** Alta disponibilidad y recuperación inmediata.  
- **Desventaja:** Coste elevado; no mejora la velocidad de escritura.

> Si uno de los discos falla, el sistema notifica el error, pero permite seguir trabajando con los datos sin interrupción.

---

## RAID 5 — *Striping con Paridad Distribuida*

- **Descripción:** Divide los datos a nivel de bloques y distribuye la información de paridad entre todos los discos del conjunto.  
- **Ventaja:** Buen equilibrio entre **rendimiento**, **capacidad útil** y **tolerancia a fallos**.  
- **Desventaja:** Recuperación lenta; no soporta la caída de más de un disco.  
- **Requiere:** Mínimo **3 discos**.

### Cálculo de Paridad
El cálculo de paridad suele realizarse mediante la operación lógica **XOR** (devuelve `1` solo si las dos entradas son diferentes).

### Ejemplo de RAID 5

Distribución:

| Disco 1 | Disco 2 | Disco 3 (Paridad) |
|----------|----------|------------------|
| 0001     | 0111     | 0110             |
| 1111     | 1110     | 0001             |
| 1011     | 0000     | 1011             |

En caso de que uno de los discos falle, se puede **reconstruir la información** utilizando los datos de los otros discos y la **paridad** almacenada.

---

## RAID 0+1 — *Espejo de Conjuntos Divididos*

- **Descripción:** Primero se dividen los datos con **RAID 0**, y luego se realiza un **RAID 1** sobre el conjunto resultante (espejo de divisores).  
- **Ventaja:** Buen rendimiento y redundancia.  
- **Desventaja:** Menor tolerancia a fallos que RAID 10; si un espejo falla, el conjunto completo se considera inservible.  
- **Redundancia:** 100%.  
- **Paridad:** No utiliza paridad.

---

## RAID 10 (1+0) — *Divisor de Espejos*

- **Descripción:** Primero se crea un **espejo (RAID 1)** de los datos y luego se realiza un **striping (RAID 0)** entre los espejos.  
- **Ventaja:** Alta velocidad y tolerancia a fallos. Ideal para **bases de datos de alto rendimiento**.  
- **Desventaja:** Alto coste en discos (la mitad del almacenamiento se usa en espejado).  
- **Paridad:** No se utiliza, lo que mejora la velocidad de escritura.

---

# Otros Tipos de RAID

Existen más configuraciones RAID (RAID 2, 3, 4, 50, 60, entre otros), que son **combinaciones o variaciones** de los niveles básicos.

> Si se comprenden los principios de **redundancia**, **replicación** y **paridad**, la **implementación de otros niveles RAID** resulta sencilla.


| Número RAID     | Descripción básica                 | Mínimo de discos | Ventajas principales                              | Desventajas principales                           |
|-----------------|------------------------------------|------------------|---------------------------------------------------|----------------------------------------------------|
| **RAID 0**      | División de datos (*striping*)     | 2                | Alto rendimiento en lectura y escritura           | No hay tolerancia a fallos; pérdida total si falla un disco |
| **RAID 1**      | Espejado de datos (*mirroring*)    | 2                | Alta disponibilidad; recuperación inmediata       | Coste elevado; la capacidad útil se reduce a la mitad |
| **RAID 5**      | *Striping* con paridad distribuida | 3                | Buen equilibrio entre rendimiento y seguridad     | Recuperación lenta; pérdida total si fallan 2 discos |
| **RAID 6**      | *Striping* con doble paridad       | 4                | Mayor tolerancia (pueden fallar 2 discos)         | Menor rendimiento en escritura                     |
| **RAID 10 (1+0)** | Espejado y *striping* combinados | 4                | Alto rendimiento y tolerancia a fallos            | Alto coste; requiere el doble de discos            |
| **RAID 0+1**    | *Striping* de conjuntos espejados  | 4                | Buen rendimiento y redundancia moderada           | Menor tolerancia que RAID 10; fallo en un espejo inutiliza el conjunto |
