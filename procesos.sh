#!/bin/bash

if [ "$1" = "mostrar" ]; then
  clear
  ps aux

elif [ "$1" = "consultar" ]; then
  clear
  read -p "Ingrese el PID del proceso que desea consultar: " pid 
  if ps -p "$pid" > /dev/null; then 
    echo "El PID ingresado corresponde a un proceso activo."
    echo "Información detallada del proceso: "
    ps -o pid,ppid,user,comm -p "$pid" 
  else 
    echo "El PID no corresponde a un proceso activo."
  fi

elif [ "$1" = "eliminar" ]; then
  clear
  read -p "Ingrese el PID del proceso que desea finalizar: " pid
  if ps -p "$pid" > /dev/null; then
    echo "¿Cómo desea finalizar el proceso?"
    echo "1) SIGTERM (terminar amablemente)"
    echo "2) SIGKILL (forzar la finalización)"
    read -p "Seleccione una opción (1 o 2): " opcion

    if [ "$opcion" = "1" ]; then
      kill -15 "$pid"
      echo "Se envió SIGTERM al proceso $pid."
    elif [ "$opcion" = "2" ]; then
      kill -9 "$pid"
      echo "Se envió SIGKILL al proceso $pid."
    else
      echo "Opción no válida."
    fi
  else
    echo "El PID no corresponde a un proceso activo."
  fi

else
  clear
  echo "Opción no válida. Use: mostrar | consultar | eliminar"
fi