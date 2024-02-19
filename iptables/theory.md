```
Las IPTables consisten en un filtro de paquetes en red automático, funcionando como un cortafuegos.
Actualmente hay miles de servidores y servicios en linea que utilizan este método para mantener un funcionamiento seguro.
Dentro de la categoría de las IPTables existen diferentes categorías que nos permiten establecer diferentes funcionalidades, estas son:
Tablas:
    • Input (Filtro): Indica si pasa o no pasa la información ya enrutada
    • Output (Filtro): indica si sale o no sale la información ya enrutada.
    • Prerouting (Modificación de destino antes de ser enrutado).
    • Postrouting (Modificación de destino después de ser enrutado).
    • Forward (Redirección: Redirige la información a otro router).
Cadenas:
    • Filter: Controla si los paquetes deben ser permitidos o bloqueados.
    • NAT (Network Address Translation - Traducción de Direcciones de Red).
    • NAT PAT (Port Address Translation - Traducción de Direcciones de Puerto).
    • GCNAT (NAT en cascada): Aplica NAT de manera recursiva, permitiendo NAT dentro de NAT.
Opciones dentro de los filtros:
    • Accept: Acepta el tráfico.
    • Drop: Descartar el tráfico silenciosamente.
    • Reject: Rechaza el tráfico enviando una notificacion al remitente.
Instrucciones dentro de las NAT:
    • DNAT (Destination NAT - Traducción de Dirección de Destino): Modifica la dirección de destino de los paquetes.
    • Redirect (Redirección): Oculta la IP cambiándola internamente.
    • Masquerade (NAT Dinámica): Aplica NAT dinámica para ocultar las direcciones internas.
    • SNAT (Source NAT - Traducción de Dirección de Origen): Modifica la dirección de origen de los paquetes salientes.
```
