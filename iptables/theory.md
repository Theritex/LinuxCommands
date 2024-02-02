Las iptables sirven para filtrar y para las red snat

Los routers se divines en Tablas/Cadenas

Las tablas pueden ser:
- Input (Filtro: Indica si pasa o no pasa la informacion ya enrutada)
- Output (Filtro: Indica si sale o no sale la informacion ya enrutada)
- Prerouting (Modificacion de destino antes de ser enrutado)
- Postronting (Modificacion de destino despues de ser enrutado)
- Forward (Redireccion: Redirige la informacion a otro router)ç
Las cadenas pueden ser:
- Filter (Indica si la infromación pasa o no pasa)
- NAT
    - NAT PAT 
    - GCNAT (Nat en raíz [Una nat dentro de otra y así sucesivamente])
    - MANGLE (Cambia las cabeceras de las direcciones)
    - RAW (NAT + MANGLE > Le cambia la cabecera sin darle una NAT)
Dentro de los firltros hay dos opciones (accept, drop o eject).
Dentro de las NAT están las instrucciones:
- DNAT (Modifica la direccion de destino)
- Redirect (Oculta la IP cambiándola por dentro)
- Masquerade (NAT Dinamica)
- SNAT (NAT Estatica)

Para su uso se recomienda usar sudo