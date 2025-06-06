#!/bin/bash

# información de la memoria en macOS

echo "========================================"
echo "       INFORMACIÓN DE LA MEMORIA        "
echo "========================================"

echo ""
echo " -- Memoria física (RAM) -- "
top -l 1 | grep PhysMem 
# top para mostrar el uso de la cpu, -l 1 es para que muestre 1 ciclo (como un screenshot) y no se refresque
# grep PhysMem es para filtrar la salida del comando top y mostrar solo la linea de PhysMem 

echo ""
echo " - Estadísticas de memoria virtual -- "
vm_stat 
# vm_stat muestra estadisticas de memoria virtual 

echo ""
echo " - Uso de SWAP -- "
sysctl vm.swapusage
# muestra cuanto swap esta en uso 

echo ""
read -p "Presione Enter para volver al menú..."
