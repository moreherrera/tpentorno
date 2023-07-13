#!/bin/bash

if [ $# -ne 2 ]; then
  echo "se deben pasar 2 url"
  exit 1
fi

url_fotos=$1
url_verif=$2

#guarda la suma de verificacion de fotos.zip en suma_archivo
suma_archivo=$(sha256sum $fotos.zip | cut -d " " -f 1)

#
if [ $suma_verif == $suma_archivo ]; then
 echo "son iguales"
else
 echo "error"
 exit 1
fi

#VAMOS A DESCARGAR IMAGENES Y LA SUMA DE VERIFICACION:
wget -q "$url_fotos" -O fotos_extraidas #lee y descarga  la url de fotos.zip
wget -q "$url_verif" -O suma_verificacion.txt #lee y descarga la url de la suma de verificacion y la guarda en una variable 

#verificar las sumas de verificación de las imágenes extraídas
for imagen in imagenes_extraidas; do
    suma_verif_calculada=$(find ./fotos_extraidas -type f -exec sha256sum {} \; | awk '{print$1}')
    suma_verif_descargada=$(cat suma_verificacion.txt| awk '{print $1}')

   if [ "$suma_verificacion_generada" != "$suma_verificacion_descargada" ]; then
       echo "Error: La suma de verificación no coincide."
       exit 1
   else
     echo "La suma coincide"
   fi


