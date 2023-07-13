#!/bin/bash

opcion=0

while [[: $opcion -ne 6 :]]; do

  echo "MENU: "
  echo "1. Generar imagenes"
  echo "2. Descargar imagenes y verificar suma de verificacion"
  echo "3. Descomprimir archivo"
  echo "4. Procesar imagenes"
  echo "5. Comprimir archivos generados y las imagenes"
  echo "6. Salir"
  echo "ingrese "
  read opcion
 #read -p "ingrese una opcion: " opcion
  case $opcion in
    1)
      read -p "ingrese la cantidad de imagenes a generar: " cantidad
      ./generar.sh "$cantidad"
      ;;
    2)
      read -p "ingrese la URL de las imagenes: " url_fotos
      read -p "ingrese la URL de la suma de verificacion: " url_verif
      bash descargar.sh "$url_fotos" "$url_verif"
      ;;
    3)
      bash descomprimir.sh
      ;;
    4)
      bash procesar.sh
      ;;
    5)
      bash comprimir.sh
      ;;
    6)
      echo "hasta luego!"
      ;;
    *)
      echo "opcion invalida"
      ;;
  esac
# read -p "ingrese una opcion: " opcion
done
