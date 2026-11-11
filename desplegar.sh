#!/bin/bash

# Obtiene la ruta de la carpeta actual del proyecto
ORIGEN="origen/index.php"
DESTINO="pruebas/index.php"

# Ejecuta PHP para validar la sintaxis
php "$ORIGEN"

if [ $? -ne 0 ]; then
    echo "Hay un error de sintaxis. No se publico el cambio"
    exit 1
fi

# Copia el archivo si la validación es exitosa
cp -f "$ORIGEN" "$DESTINO"
echo "Versión publicada en el ambiente de pruebas"
