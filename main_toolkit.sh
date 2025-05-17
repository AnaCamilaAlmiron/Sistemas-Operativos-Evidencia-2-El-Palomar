#!/bin/bash
# Bienvenida
echo "Bienvenido al Sistema de Gestion el Palomar"

# Definicion de Menu principal
while true; do
echo -e "===Menu Principal==="
echo -e "1. Mostrar los procesos en ejecución."
echo -e "2. Ingrese el ID de proceso que desea consultar"
echo -e "3. Ingrese el ID de proceso que desea finalizar"
echo -e
read -p "Elija una opcion" opcion

    case $opcion in
        1)
            sh ./procesos.sh mostrar
            ;;
        2)
            sh ./procesos.sh consultar
            ;;
        3)
            sh ./procesos.sh eliminar
            ;;
        *)
            echo -e "Opcion invalida!"    
            read -p "Presione Enter para volver a intentar"
    esac
done


#chmod +x main_toolkit.sh 
#./main_toolkit.sh gi