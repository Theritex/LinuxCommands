```prolog
#-----------------------#---------------------------------------------------------------------------------------------------#---------------------------------------------------------------#-----------------------------------------------------------#---------------------------------------------------------------------------------------------------------------------------------------------------#---------------------------------------------------#
|   COMANDO             |       DESCRIPCION                                                                                 |      MUESTRA EJEMPLAR                                         |     MUESTRA PRACTICA                                      |       EXPLICACION                                                                                                                                 |       REQUISITOS                                  |
#-----------------------#---------------------------------------------------------------------------------------------------#---------------------------------------------------------------#-----------------------------------------------------------#---------------------------------------------------------------------------------------------------------------------------------------------------#---------------------------------------------------#
# sudo dhclient           §; Vuelve a pedir todo al servidor dhcp
# ip addr
## show
## add
## del
## flush dev
#ip route
## get
## show
## show default
## add
## add default
## del
## replace
## add
## flush dev
# ip link
## show
## set <#> up
## set <#> down
## set <#> mtu 9000
## set <#> promisc on
# ip -s link show <#>
# ip link set <#> addr <mac>
# ip link set <#> name <nombre>
# ip route
## show default
## get <ip>
## get <ip>/<mask>
## show <ip>/<mask>
## add <ip>/<mask> dev <#>
## add <ip>/<mask> via <ip>
## add default via <ip> dev <#>
## del <ip>/<mask> via <ip>
## replace <ip>/<mask> via <ip> dev <#>
add <ip>/<mask> via <ip> dev <#> metric 100
flush dev <#>
# ip neigh
## show
## show dev <#>
## add <ip> lladdr <mac> dev <#> nud permanent
## change <ip> lladdr <mac> dev <#>
## del <ip> <#>
## flush to <ip>/<mask>
```