#!/bin/bash
# Bienvenida
echo "Bienvenido al Sistema de Gestion el Palomar"

# Definicion de Menu principal
while True; do
echo -e "===Menu Principal==="
echo -e "1) Saludar al ISPC"
echo -e "2) Salir"
echo -e
read -p "Elija una opcion" opcion

    case $opcion in
        1)
            echo -e "Hola ISPC!"
            read -p "Presione enter para continuar"
            ;;
        2)
            echo -e "Saliendo..."
            break
            ;;
        *)
            echo -e "Opcion invalida!"    
            read -p "Presione Enter para volver a intentar"
    esac
done


#chmod +x main_toolkit.sh 
#./main_toolkit.sh gi