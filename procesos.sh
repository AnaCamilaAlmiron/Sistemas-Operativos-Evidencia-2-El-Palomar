if [ "$1" = "mostrar" ]; then
  ps aux
elif [ "$1" = "consultar" ]; then
  read -p "Ingrese el PID del proceso que desea consultar: " pid 
  if ps -p "$pid" > /dev/null; then 
    echo "El PID ingresado corresponde a un proceso activo."
    echo "Información detallada del proceso: "
    ps -o pid,ppid,user,comm -p "$pid" 
  else 
    echo "El PID no corresponde a un proceso activo."
  fi
elif [ "$1" = "eliminar" ]; then
  ps kill
else
  echo "Opción no válida"
fi
