#!/bin/bash

# Definición de colores
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # Sin color

# Bienvenida
clear
echo -e "${GREEN}==============================================${NC}"
echo -e "${YELLOW}         SISTEMA DE GESTION EL PALOMAR        ${NC}"
echo -e "${GREEN}==============================================${NC}"
echo -e "${CYAN}"
echo "          __                       __"
echo -e "      ___( o)${YELLOW}>${CYAN}                   ${YELLOW}<${CYAN}(o )___"
echo "      \\ <_. )    ~ Bienvenido!    ( ._> /"
echo "       \`---'                       '---'"
echo -e "${NC}"

echo -e "${GREEN}         Presione enter para ingresar...${NC}"
read -p ""

# funcion para el submenu de procesos
submenu_procesos() {
  while true; do
    clear
    echo
    echo -e "${GREEN}========== MENÚ PROCESOS ===========${NC}"
    echo
    echo "1. Mostrar los procesos en ejecución"
    echo "2. Consultar un proceso por PID"
    echo "3. Eliminar un proceso por PID"
    echo "4. Volver al menú principal"
    echo
    echo -e "${GREEN}====================================${NC}"
    echo
    read -p "Elija una opción: " subopcion 

    case $subopcion in 
      1) sh ./procesos.sh mostrar; read -p "Presione Enter para continuar...";; # ejecuta el script de procesos con el argumento mostrar, el read para salir del proceso
      2) sh ./procesos.sh consultar; read -p "Presione Enter para continuar...";;
      3) sh ./procesos.sh eliminar; read -p "Presione Enter para continuar...";;
      4) break;; 
      *) clear
          echo -e "${YELLOW}Opción inválida."; read -p "Presione Enter para intentar de nuevo...";;
    esac
  done
}

# funcion para el submenu de memoria
submenu_memoria() {
  sh ./memoria.sh # ejecuta memoria.sh que ya tiene su propio read
}

# funcion para el submenu de disco
submenu_disco() {
  sh ./disco.sh
}

# menu principal
while true; do
  clear
  echo -e "${GREEN}========== MENÚ PRINCIPAL ==========${NC}"
  echo
  echo "1. Acceder al menú Procesos"
  echo "2. Acceder a diagnóstico de memoria"
  echo "3. Acceder a diagnóstico de disco"
  echo "4. Salir"
  echo
  echo -e "${GREEN}====================================${NC}"
  echo
  read -p "Seleccione una opción: " opcion 

  case $opcion in
    1) submenu_procesos;;
    2) submenu_memoria;;
    3) submenu_disco;;
    4)  clear
        echo -e "${YELLOW}Saliendo..."; exit 0;;
    *) clear; echo -e "${YELLOW}Opción inválida."; read -p "Presione Enter para intentar de nuevo...";;
  esac
done