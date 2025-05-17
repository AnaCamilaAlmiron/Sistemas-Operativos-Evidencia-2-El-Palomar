if [ "$1" = "mostrar" ]; then
  ps aux
elif [ "$1" = "consultar" ]; then
  echo "Elegiste la opción 2"
elif [ "$1" = "eliminar" ]; then
  echo "Elegiste la opción 3"
else
  echo "Opción no válida"
fi
