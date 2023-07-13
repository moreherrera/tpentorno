#!/bin/bash
cd /home/lubuntu/entorno/fotos

#guardas en la variable "imagenes" las fotos que coinciden con el patron (nombres validos)
imagenes=$(ls | grep -Ew "^[A-Z][a-z]+")

directorio_salida="$1"

#para cada foto en imagenes, le aplica el convert para modificar las dimensiones de la foto
for i in $imagenes; do
  convert "$i" -gravity center -resize 512x512+0+0 -extent 512x512 "$directorio_salida/$i"
  echo "imagen recortada: $i"
done

ls -l "$directorio_salida"

