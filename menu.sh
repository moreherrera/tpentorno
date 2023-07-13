#!/bin/bash

echo "MENU: "
echo "1. Generar imagenes"
echo "2. Descargar imagenes y verificar suma de verificacion"
echo "3. Descomprimir archivo"
echo "4. Procesar imagenes"
echo "5. Comprimir archivos generados y las imagenes"
echo "6. Salir"

read -p "ingrese una opcion: " opcion
case $opcion in
 1)
    read -p "ingrese la cantidad de imagenes a generar: " cantidad
    source generar.sh "$cantidad"
    ;;
 2)
    read -p "ingrese la URL de las imagenes: " url_imagenes
    read -p "ingrese la URL de la suma de verificacion: " url_verificacion
    source descargar.sh "$url_imagenes" "$url_verificacion"
    ;;
 3)
    source descomprimir.sh
    ;;
 4)
    source procesar.sh
    ;;
 5)
    source comprimir.sh
    ;;
 6)
    echo "hasta luego!"
    ;;
 *)
    echo "opcion invalida"
    ;;
esac
