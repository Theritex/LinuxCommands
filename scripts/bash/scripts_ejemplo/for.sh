#!/bin/bash

# Variables de entorno
VARIABLES=("HOME" "USER" "SHELL" "PWD" "HOSTNAME" "LANG")

# Estructura Condicional
echo "Verificación de usuario"
if [ "$USER" = "root" ]; then
    echo "Usuario root, permisos de administrador"
else
    echo "Usuario $USER, permisos limitado"
fi

# Buscle FOR: Iterar sobre la lista de variables
for var in "${VARIABLES[@]}"; do
    valor=$(eval echo \$$var)
    echo "$var | $valor"
done

# For muestra el interior de las var VARIABLES y su contenido como variable de entorno