#!/bin/bash

if [ ! -f fotos.zip ]; then
   echo "no se encuentra el archivo o no existe"
   exit 1
fi

#creo una carpeta para las fotos recortadas:
unzip fotos.zip -d imagenes_recortadas

#para cada foto en imagenes, le aplica el convert para modificar las dimensiones de la foto
for foto in imagenes_recortadas/*; do
    nombre_foto=$(basename "$foto") #el nombre de la foto se va a llamar como el archivo original
   
    if [[ $nombre_foto =~ ^[A-Z][a-z]+$ ]]; then #patron de busqueda 
      convert "$foto" -gravity center -resize 512x512+0+0 -extent 512x512 "$nombre_foto"_recortada
      mv "$nombre_foto"_recortada imagenes_recortadas
      rm $foto
    fi
done

ls -l imagenes_recortadas

