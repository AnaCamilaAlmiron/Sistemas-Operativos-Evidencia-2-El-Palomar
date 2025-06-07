#!/bin/bash

echo "========================================"
echo "        INFORMACIÓN DEL DISCO           "
echo "========================================"

#Mostramos espacio ocupado y libre con df -h
echo ""
echo "Espacio libre y ocupado en los sistemas de archivos:"
df -h

echo ""
read -p "Ingrese una ruta para ver cuánto espacio ocupa (ej. /Users/tuusuario o . para carpeta actual): " ruta

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

echo ""
read -p "Presione Enter para volver al menú..."
