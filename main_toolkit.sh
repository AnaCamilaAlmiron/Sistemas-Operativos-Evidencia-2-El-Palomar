#!/bin/bash

# bienvenida
echo "Bienvenido al Sistema de Gestión El Palomar"

# funcion para el submenu de procesos
submenu_procesos() {
  while true; do
    echo "=== Submenú de Procesos ==="
    echo "1. Mostrar los procesos en ejecución"
    echo "2. Consultar un proceso por PID"
    echo "3. Eliminar un proceso por PID"
    echo "4. Volver al menú principal"
    read -p "Elija una opción: " subopcion # subopcion es la variable en la cual guarda la info que le pasa el usuario

    case $subopcion in # evalua la opcion que le paso el usuario
      1) sh ./procesos.sh mostrar; read -p "Presione Enter para continuar...";; # ejecuta el script de procesos con el argumento mostrar, el read para salir del proceso
      2) sh ./procesos.sh consultar; read -p "Presione Enter para continuar...";;
      3) sh ./procesos.sh eliminar; read -p "Presione Enter para continuar...";;
      4) break;; # se rompe el bucle y se vuelve el menu principal
      *) echo "Opción inválida."; read -p "Presione Enter para intentar de nuevo...";;
    esac
  done
}

# funcion para el submenu de memoria
submenu_memoria() {
  sh ./memoria.sh # ejecuta memoria.sh que ya tiene su propio read
}

# menu principal
while true; do
  echo "========= MENÚ PRINCIPAL ========="
  echo "1. Opción acerca de procesos"
  echo "2. Opción acerca de memoria"
  echo "3. Salir"
  echo "=================================="
  read -p "Seleccione una opción: " opcion # variable opcion

  case $opcion in
    1) submenu_procesos;; # llama a la funcion submenu_procesos 
    2) submenu_memoria;;
    3) echo "Saliendo..."; exit 0;; # exit para salir, el 0 es porque termino correctamente sin errores
    *) echo "Opción inválida."; read -p "Presione Enter para intentar de nuevo...";;
  esac
done