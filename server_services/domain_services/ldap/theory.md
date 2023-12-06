Las siglas LDAP provienen de 'Protocolo Ligero de Acceso a Directorio' / (Lightweight Directory Access Protocol), 
El protocolo LDAP está basado en una estructura 'cliente-servidor'.

Estructura Nodos:
```
[Nodo maestro] (Nodo raíz)
├── Nodo Padre
└── Nodo Hijo
    ├── grupos
    └── usuarios
```

Los nodos parten de una raíz, en el ejemplo anterior el nodo parte de `[nodo maestro]`, siendo este, la raíz del resto de nodos.
Al funcionar con estructura jerárquica, nos indica que el servicio de nodos funciona en forma de árbol conectados de forma directa a la que se puede acceder por red o NAT.
```
- Hostname: Nombre del host
- Hosts: Máquina que otorga el servicio
- Nodo: Contenido donde se guarda información
- Clases: Estructura donde guardar infromación (el propio servicio cuenta con clases creadas de forma predeterminada)
- DN: (Distinguished Name) Nombre global único
- RDN: (Relative Distinguished) Name Nombre relativo único
```
Cada nodo cuenta con:
estructura para almacenar información
nombre único

archivos .ldif -> creación de nodos: nombre.ldif -> nodo nombre

```
Atributos DN:
- CN		commonName
- L		    localityName
- ST		stateOrProvinceName
- O		    organizationName
- OU		organizationalUnitName
- C		    countryName
- STREET	streetAddress
- DC		domainComponent
- UID		userid
```

# Estructura árbol general:
```
.
├── dc=local
└── dc=empresa
    ├── ou=usuarios
    │   ├── uid=usuario1 | uidNumber=1001
    │   ├── uid=usuario2 | uidNumber=1002
    │   └── uid=usuario3 | uidNumber=1003
    └── ou=grupos
        ├── cn=sistemas | gidNumber=20001
        ├── cn=rrhh | gidNumber=20002
        └── cn=contabilidad | gidNumber=20003
```

<!--===========================================================

El nombre global único (DN) se denomina Distinguished Name:
Se construye con sus atributos, que son parejas de nombreAtributo=valor. 
Estos atributos se denominan RDNs (Relative Distinguished Names) porque la posición en la que aparezcan es relativa al resto de atributos, que establecen en qué posición del árbol del directorio se sitúa la entrada, partiendo de la hoja hasta llegar a la raíz.

dn: uid=321321, ou=SMR, dc=FP, dc=DGA objectClass: person cn: Susana Fernandez givenname: Susana sn: Fernandez o: IES Sierra de Guara ou: SMR mail: blabla@blabla.com -->