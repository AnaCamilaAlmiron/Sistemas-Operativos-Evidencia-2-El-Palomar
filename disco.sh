#!/bin/bash

# Definición de colores
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # Sin color

#Menú disco
clear
echo -e "${GREEN}==========================================${NC}"
echo    "         INFORMACIÓN DEL DISCO            "
echo -e "${GREEN}==========================================${NC}"

#Mostramos espacio ocupado y libre con df -h
echo ""
echo "Espacio libre y ocupado en los sistemas de archivos:"
df -h

echo ""
echo -e "${YELLOW}Ingrese una ruta para ver cuánto espacio ocupa:${NC}"
echo -e "(ej: ${YELLOW}/Users/tuusuario${NC} o ${RED}.${NC} para carpeta actual) "
read -p "" ruta

#Verificación si la ruta existe
if [ -e "$ruta" ]; then
  echo ""
  echo "Tamaño ocupado por $ruta:"
  du -sh "$ruta"
else
  echo "La ruta ingresada no existe."
fi

echo ""
read -p "Ingrese un directorio para listar sus archivos y permisos: " directorio

# Verificación si es un directorio válido
if [ -d "$directorio" ]; then
  echo ""
  echo "Archivos en $directorio con sus permisos:"
  ls -l "$directorio"
else
  echo "El directorio ingresado no existe o no es válido."
fi

echo -e "${YELLOW}"
read -p "Presione Enter para volver al menú..."
